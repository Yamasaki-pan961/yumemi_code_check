import 'package:dio/dio.dart';
import 'package:http_mock_adapter/http_mock_adapter.dart';
import 'package:yumemi_code_check/domain/server/client/github_api_path.dart';

/// MockされたDioインスタンスを生成し、扱うクラス
///
/// 使い方
/// ```dart
/// final mockServer = MockGithubApiServer(); //Mockサーバーを生成
/// final retrofitClient =  RetrofitApiClient(dio: mockServer.dio); //MockされたDioをClientに渡す
/// ```
class MockGithubApiServer {
  MockGithubApiServer() {
    dio = Dio(BaseOptions(baseUrl: githubApiBaseUrl));
    _dioAdapter = DioAdapter(dio: dio);
  }

  late final Dio dio;
  late final DioAdapter _dioAdapter;

  /// ステータスコードごとにAPIリクエストをTestをする関数（すべて成功扱い）
  ///
  /// [responseMap]と[statusFunction]のkeyはレスポンスのStatusCode\
  /// [responseMap]と[statusFunction]に同一のStatusCodeが存在するに動作する
  ///
  /// 例:
  /// ```dart
  /// responseMap = {200: json200,404: json404}
  /// statusFunction = {200: Future(()async{}), 500: Future(()async{})}
  /// // 200のみ動作する
  /// ```
  ///
  Future<void> onGetSuccessStatuses({
    required String path,
    required Map<int, Map<String, dynamic>> responseMap,
    required Map<int, Future<void>> statusFunction,
  }) async {
    for (final status in statusFunction.keys) {
      if (responseMap.containsKey(status)) {
        _dioAdapter.onGet(
          path,
          (server) => server.reply(status, responseMap[status]),
          data: Matchers.any,
        );
        await statusFunction[status]!;
      }
    }
  }

  /// ステータスコードごとにAPIリクエストをTestをする関数（すべてDioError）
  ///
  /// [responseMap]と[statusFunction]のkeyはレスポンスのStatusCode\
  /// [responseMap]と[statusFunction]に同一のStatusCodeが存在するに動作する
  ///
  /// 例:
  /// ```dart
  /// responseMap = {200: json200,404: json404}
  /// statusFunction = {200: Future(()async{}), 500: Future(()async{}}
  /// // 200のみ動作する
  /// ```
  ///
  Future<void> onGetFailureStatus({
    required String path,
    required Map<int, Map<String, dynamic>> responseMap,
    required Map<int, Future<void>> statusFunction,
  }) async {
    for (final status in statusFunction.keys) {
      if (responseMap.containsKey(status)) {
        _dioAdapter.onGet(
          path,
          (server) => server.throws(
            status,
            DioError(
              requestOptions: RequestOptions(path: path),
              response: Response<dynamic>(
                requestOptions: RequestOptions(
                  path: path,
                  data: responseMap[status],
                ),
                statusCode: status,
              ),
              type: DioErrorType.response,
            ),
          ),
          data: Matchers.any,
        );
        await statusFunction[status]!;
      }
    }
  }

  /// 成功レスポンスを設定する関数
  void setGetSuccessResponse(String path, int status, dynamic data) =>
      _dioAdapter.onGet(
        path,
        (server) => server.reply(status, data),
        data: Matchers.any,
      );

  /// エラーレスポンスを設定する関数
  void setGetFailureResponse(String path, int status, dynamic data) =>
      _dioAdapter.onGet(
        path,
        (server) => server.throws(
          status,
          DioError(
            requestOptions: RequestOptions(path: path),
            response: Response<dynamic>(
              requestOptions: RequestOptions(
                path: path,
                data: data,
              ),
              statusCode: status,
            ),
            type: DioErrorType.response,
          ),
        ),
        data: Matchers.any,
      );
}
