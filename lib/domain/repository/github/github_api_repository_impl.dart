import 'package:dio/dio.dart';
import 'package:yumemi_code_check/domain/model/result.dart';
import 'package:yumemi_code_check/domain/model/github/search_repository_response.dart';
import 'package:yumemi_code_check/domain/repository/github/github_api_repository.dart';
import 'package:quiver/strings.dart';
import 'package:yumemi_code_check/domain/server/client/github_api_client.dart';

class GithubApiRepositoryImpl implements GithubApiRepository {
  GithubApiRepositoryImpl([GithubApiClient? client])
      : _client = client ?? GithubApiClient(Dio());

  final GithubApiClient _client;

  @override
  Future<Result<SearchRepositoryResponse>> searchRepository(
    String searchKeyword,
  ) {
    if (isBlank(searchKeyword)) {
      throw ArgumentError.value(
        searchKeyword,
        'searchKeyword',
        'Parameter "searchKeyword" should be not Blank',
      );
    }

    return _client
        .searchRepositories(searchKeyword)
        .then(Result.success)
        .catchError((Object error) {
      return Result<SearchRepositoryResponse>.failure(error);
    });
  }
}
