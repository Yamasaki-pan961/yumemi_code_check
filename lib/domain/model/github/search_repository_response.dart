import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yumemi_code_check/domain/model/github/github_repository_info.dart';

part '../../../generated/domain/model/github/search_repository_response.freezed.dart';
part '../../../generated/domain/model/github/search_repository_response.g.dart';

/// /search/repositories のレスポンスを受け取るデータクラス
/// 
/// https://docs.github.com/ja/rest/search# Search Repositoryの項目を参照
@freezed
class SearchRepositoryResponse with _$SearchRepositoryResponse {
  const factory SearchRepositoryResponse({
    @JsonKey(name: 'items') required List<GithubRepositoryInfo> items,
    @JsonKey(name: 'total_count') required int totalCount,
  }) = _SearchRepositoryResponse;

  factory SearchRepositoryResponse.fromJson(Map<String, dynamic> json) =>
      _$SearchRepositoryResponseFromJson(json);
}
