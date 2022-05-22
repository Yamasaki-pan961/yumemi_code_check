import 'package:freezed_annotation/freezed_annotation.dart';
import 'github_repository_info.dart';

part '../../../generated/domain/model/github/search_repository_response.freezed.dart';
part '../../../generated/domain/model/github/search_repository_response.g.dart';

@freezed
class SearchRepositoryResponse with _$SearchRepositoryResponse {
  const factory SearchRepositoryResponse({
    @JsonKey(name: 'items') required List<GithubRepositoryInfo> items,
    @JsonKey(name: 'total_count') required int totalCount,
  }) = _SearchRepositoryResponse;

  factory SearchRepositoryResponse.fromJson(Map<String, dynamic> json) =>
      _$SearchRepositoryResponseFromJson(json);
}
