import 'package:freezed_annotation/freezed_annotation.dart';
import 'owner.dart';

part '../../../generated/domain/model/github/github_repository_info.freezed.dart';
part '../../../generated/domain/model/github/github_repository_info.g.dart';

@freezed
class GithubRepositoryInfo with _$GithubRepositoryInfo {
  const factory GithubRepositoryInfo({
    @JsonKey(name: 'full_name') required String name,
    @JsonKey(name: 'owner') required Owner owner,
    @JsonKey(name: 'language') required String? language,
    @JsonKey(name: 'stargazers_count') required int stargazersCount,
    @JsonKey(name: 'watchers_count') required int watchersCount,
    @JsonKey(name: 'forks_count') required int forksCount,
    @JsonKey(name: 'open_issues_count') required int openIssuesCount,
  }) = _GithubRepositoryInfo;

  factory GithubRepositoryInfo.fromJson(Map<String, dynamic> json) =>
      _$GithubRepositoryInfoFromJson(json);
}
