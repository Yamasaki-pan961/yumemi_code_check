import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:http_mock_adapter/http_mock_adapter.dart';
import 'package:yumemi_code_check/domain/server/client/github_api_path.dart';

class MockGithubApiServer {
  MockGithubApiServer() {
    dio = Dio(BaseOptions(baseUrl: githubApiBaseUrl));
    _dioAdapter = DioAdapter(dio: dio);
  }

  late final Dio dio;
  late final DioAdapter _dioAdapter;

  void onGetSuccessStatuses({
    required String path,
    required Map<int, Map<String, dynamic>> responseMap,
    required Map<int, VoidCallback> statusFunction,
  }) {
    statusFunction.forEach((status, function) {
      if (responseMap.containsKey(status)) {
        _dioAdapter.onGet(
          path,
          (server) => server.reply(status, responseMap[status]),
          data: Matchers.any,
        );
        function();
      }
    });
  }

  void onGetFailureStatus({
    required String path,
    required Map<int, Map<String, dynamic>> responseMap,
    required Map<int, VoidCallback> statusFunction,
  }) {
    statusFunction.forEach((status, function) {
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
        function();
      }
    });
  }

  void setGetSuccessResponse(String path, int status, dynamic data) =>
      _dioAdapter.onGet(
        path,
        (server) => server.reply(status, data),
        data: Matchers.any,
      );

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

  void close() => _dioAdapter.close();
  void reset() => _dioAdapter.reset();
}
