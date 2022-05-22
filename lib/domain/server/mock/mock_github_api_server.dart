import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:http_mock_adapter/http_mock_adapter.dart';
import 'package:yumemi_code_check/domain/server/client/github_api_path.dart';
import 'package:yumemi_code_check/domain/server/mock/search_repository_json.dart';

class MockGithubApiServer {
  MockGithubApiServer() {
    dio = Dio(BaseOptions(baseUrl: githubApiBaseUrl));
    _dioAdapter = DioAdapter(dio: dio);
    _setSearchRepositoryResponse();
  }

  late final Dio dio;
  late final DioAdapter _dioAdapter;

  void _setSearchRepositoryResponse() {
    const path = githubSearchRepositoriesUrl;
    
    _dioAdapter.onGet(
      path,
      (server) async {
        server.reply(
          200,
          json.decode(searchRepositoryJson) as Map<String, dynamic>,
        );
      },
      data: Matchers.any,
    );
  }

  void statusPatternTest({
    required String path,
    VoidCallback? code200,
    VoidCallback? code304,
    VoidCallback? code403,
    VoidCallback? code422,
    VoidCallback? code503,
  }) {}
}
