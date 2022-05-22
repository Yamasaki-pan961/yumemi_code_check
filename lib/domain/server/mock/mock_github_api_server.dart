import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:http_mock_adapter/http_mock_adapter.dart';
import 'package:yumemi_code_check/domain/server/mock/search_repository_json.dart';

class MockGithubApiServer {
  MockGithubApiServer({required this.dio}) {
    _dioAdapter = DioAdapter(dio: dio);
    _setSearchRepositoryResponse();
  }
  static const baseUrl = 'https://api.github.com';
  final Dio dio;
  late final DioAdapter _dioAdapter;

  void _setSearchRepositoryResponse() {
    const path = '/search/repositories';
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
}
