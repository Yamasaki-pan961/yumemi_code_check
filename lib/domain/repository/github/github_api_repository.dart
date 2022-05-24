import 'package:yumemi_code_check/domain/model/github/search_repository_response.dart';
import 'package:yumemi_code_check/domain/model/result.dart';

// ignore: one_member_abstracts
abstract class GithubApiRepository {
  Future<Result<SearchRepositoryResponse>> searchRepository(
    String searchKeyword,
  );
}
