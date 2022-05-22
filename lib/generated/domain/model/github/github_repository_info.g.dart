// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../../../domain/model/github/github_repository_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GithubRepositoryInfo _$$_GithubRepositoryInfoFromJson(
        Map<String, dynamic> json) =>
    _$_GithubRepositoryInfo(
      name: json['full_name'] as String,
      owner: Owner.fromJson(json['owner'] as Map<String, dynamic>),
      language: json['language'] as String?,
      stargazersCount: json['stargazers_count'] as int,
      watchersCount: json['watchers_count'] as int,
      forksCount: json['forks_count'] as int,
      openIssuesCount: json['open_issues_count'] as int,
    );

Map<String, dynamic> _$$_GithubRepositoryInfoToJson(
        _$_GithubRepositoryInfo instance) =>
    <String, dynamic>{
      'full_name': instance.name,
      'owner': instance.owner,
      'language': instance.language,
      'stargazers_count': instance.stargazersCount,
      'watchers_count': instance.watchersCount,
      'forks_count': instance.forksCount,
      'open_issues_count': instance.openIssuesCount,
    };
