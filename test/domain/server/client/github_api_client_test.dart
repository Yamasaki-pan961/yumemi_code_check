import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:yumemi_code_check/domain/model/github/search_repository_response.dart';
import 'package:yumemi_code_check/domain/server/client/github_api_client.dart';
import 'package:yumemi_code_check/domain/server/client/github_api_path.dart';
import 'package:yumemi_code_check/domain/server/mock/mock_github_api_server.dart';
import 'package:yumemi_code_check/domain/server/mock/search_repository_json.dart';

void main() {
  late GithubApiClient githubApiClient;
  final json = jsonDecode(searchRepositoryJson) as Map<String, dynamic>;

  group('Github Api Client', () {
    test('モデルのパーステスト', () async {
      SearchRepositoryResponse.fromJson(json);
    });

    test('MockサーバでのGetテスト', () {
      final mockServer = MockGithubApiServer();
      githubApiClient = GithubApiClient(mockServer.dio);
      final responseFromJson = SearchRepositoryResponse.fromJson(json);

      mockServer.onGetSuccessStatuses(
        path: githubSearchRepositoriesUrl,
        responseMap: mockSearchStatusResponse,
        statusFunction: {
          200: () async {
            final response = await githubApiClient.searchRepositories('aa');
            expect(response, responseFromJson);
          },
        },
      );
    });
  });
}
