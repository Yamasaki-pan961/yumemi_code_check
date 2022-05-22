// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../../../domain/server/client/github_api_client.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps

class _GithubApiClient implements GithubApiClient {
  _GithubApiClient(this._dio, {this.baseUrl}) {
    baseUrl ??= 'https://api.github.com';
  }

  final Dio _dio;

  String? baseUrl;

  @override
  Future<SearchRepositoryResponse> searchRepositories(searchKeyword) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'q': searchKeyword};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<SearchRepositoryResponse>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, '/search/repositories',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = SearchRepositoryResponse.fromJson(_result.data!);
    return value;
  }

  RequestOptions _setStreamType<T>(RequestOptions requestOptions) {
    if (T != dynamic &&
        !(requestOptions.responseType == ResponseType.bytes ||
            requestOptions.responseType == ResponseType.stream)) {
      if (T == String) {
        requestOptions.responseType = ResponseType.plain;
      } else {
        requestOptions.responseType = ResponseType.json;
      }
    }
    return requestOptions;
  }
}
