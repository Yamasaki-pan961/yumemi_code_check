import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart' as dio;
import 'package:yumemi_code_check/domain/server/client/github_api_path.dart';
import '../../model/github/search_repository_response.dart';

part '../../../generated/domain/server/client/github_api_client.g.dart';

@RestApi(baseUrl: githubApiBaseUrl)
abstract class GithubApiClient {
  factory GithubApiClient(dio.Dio dio, {String baseUrl}) = _GithubApiClient;

  @GET(githubSearchRepositoriesUrl)
  @Headers(<String, dynamic>{'accept': 'application/vnd.github.v3+json'})
  Future<SearchRepositoryResponse> searchRepositories(
    @Query('q') String searchKeyword,
  );
}
