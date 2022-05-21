// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../../../domain/model/github/search_repository_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SearchRepositoryResponse _$$_SearchRepositoryResponseFromJson(
        Map<String, dynamic> json) =>
    _$_SearchRepositoryResponse(
      items: (json['items'] as List<dynamic>)
          .map((e) => GithubRepositoryInfo.fromJson(e as Map<String, dynamic>))
          .toList(),
      totalCount: json['total_count'] as int,
    );

Map<String, dynamic> _$$_SearchRepositoryResponseToJson(
        _$_SearchRepositoryResponse instance) =>
    <String, dynamic>{
      'items': instance.items,
      'total_count': instance.totalCount,
    };
