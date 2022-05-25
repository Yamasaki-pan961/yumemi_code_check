import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:yumemi_code_check/domain/repository/github/github_api_repository.dart';
import 'package:yumemi_code_check/domain/repository/github/github_api_repository_impl.dart';
import 'package:yumemi_code_check/domain/server/client/github_api_client.dart';
import 'package:yumemi_code_check/domain/server/client/github_api_path.dart';
import 'package:yumemi_code_check/domain/server/mock/mock_github_api_server.dart';
import 'package:yumemi_code_check/domain/server/mock/search_repository_json.dart';

final flavorProvider =
    Provider.autoDispose((ref) => const String.fromEnvironment('FLAVOR'));

final mockServerProvider = Provider.autoDispose((ref) {
  final flavor = ref.watch(flavorProvider);
  if (flavor == 'dev') {
    final mock = MockGithubApiServer()
      ..setGetSuccessResponse(
        githubSearchRepositoriesUrl,
        200,
        mockSearchStatusResponse[200],
      );
    return mock;
  }
  return null;
});

final githubApiRepositoryProvider =
    Provider.autoDispose<GithubApiRepository>((ref) {
  final mock = ref.watch(mockServerProvider);
  if (mock != null) {
    return GithubApiRepositoryImpl(GithubApiClient(mock.dio));
  } else {
    return GithubApiRepositoryImpl();
  }
});
