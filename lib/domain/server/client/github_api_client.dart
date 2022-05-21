import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';
import '../../model/github/search_repository_response.dart';

part '../../../generated/domain/server/client/github_api_client.g.dart';

@RestApi(baseUrl: "https://api.github.com")
abstract class RestClient {
  factory RestClient(Dio dio, {String baseUrl}) = _RestClient;

  @GET("/search/repositories")
  Future<SearchRepositoryResponse> searchRepositories(
      @Query("q") String searchKeyword);
}
