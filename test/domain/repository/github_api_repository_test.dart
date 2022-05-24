import 'dart:async';
import 'dart:convert';
import 'dart:developer';
import 'dart:ffi';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:yumemi_code_check/domain/model/github/search_repository_response.dart';
import 'package:yumemi_code_check/domain/model/result.dart';
import 'package:yumemi_code_check/domain/repository/github/github_api_repository.dart';
import 'package:yumemi_code_check/domain/repository/github/github_api_repository_impl.dart';
import 'package:yumemi_code_check/domain/server/client/github_api_client.dart';
import 'package:yumemi_code_check/domain/server/client/github_api_path.dart';
import 'package:yumemi_code_check/domain/server/mock/mock_github_api_server.dart';
import 'package:yumemi_code_check/domain/server/mock/search_repository_json.dart';

void main() async {
  late GithubApiClient githubApiClient;
  late MockGithubApiServer mockServer;
  late GithubApiRepository repository;
  final json = jsonDecode(searchRepositoryJson) as Map<String, dynamic>;
  final responseFromJson = SearchRepositoryResponse.fromJson(json);

  setUp(() {
    mockServer = MockGithubApiServer();
    githubApiClient = GithubApiClient(mockServer.dio);
    repository = GithubApiRepositoryImpl(githubApiClient);
  });

  group('Github Api Repository', () {
    group('searchRepository()', () {
      test('無効引数', () {
        expect(
          () => repository.searchRepository(''),
          throwsArgumentError,
        );
        expect(
          () => repository.searchRepository('  '),
          throwsArgumentError,
        );
        expect(
          () => repository.searchRepository('　　'),
          throwsArgumentError,
        );
      });

      test('Mockサーバー成功レスポンス', () async {
        await mockServer.onGetSuccessStatuses(
          path: githubSearchRepositoriesUrl,
          responseMap: mockSearchStatusResponse,
          statusFunction: {
            200: Future(() async {
              expect(
                await githubApiClient.searchRepositories('kotlin'),
                responseFromJson,
              );
            })
          },
        );
      });
      test('Mockサーバー失敗レスポンス', () async {
        await mockServer.onGetFailureStatus(
          path: githubSearchRepositoriesUrl,
          responseMap: mockSearchStatusResponse,
          statusFunction: {
            503: Future(() async {
              final response = await repository.searchRepository('kotlin');
              response.when(
                success: (res) => throw Exception('response should be failure'),
                failure: (error) {
                  if (error is! DioError) {
                    throw Exception('$error response should be DioError');
                  }
                  expect(error.response?.statusCode, 503);
                },
              );
            })
          },
        );
      });
    });
  });
}
