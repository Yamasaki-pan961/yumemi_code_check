// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of '../../../../domain/model/github/github_repository_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GithubRepositoryInfo _$GithubRepositoryInfoFromJson(Map<String, dynamic> json) {
  return _GithubRepositoryInfo.fromJson(json);
}

/// @nodoc
mixin _$GithubRepositoryInfo {
  @JsonKey(name: 'full_name')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'owner')
  Owner get owner => throw _privateConstructorUsedError;
  @JsonKey(name: 'language')
  String? get language => throw _privateConstructorUsedError;
  @JsonKey(name: 'stargazers_count')
  int get stargazersCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'watchers_count')
  int get watchersCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'forks_count')
  int get forksCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'open_issues_count')
  int get openIssuesCount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GithubRepositoryInfoCopyWith<GithubRepositoryInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GithubRepositoryInfoCopyWith<$Res> {
  factory $GithubRepositoryInfoCopyWith(GithubRepositoryInfo value,
          $Res Function(GithubRepositoryInfo) then) =
      _$GithubRepositoryInfoCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'full_name') String name,
      @JsonKey(name: 'owner') Owner owner,
      @JsonKey(name: 'language') String? language,
      @JsonKey(name: 'stargazers_count') int stargazersCount,
      @JsonKey(name: 'watchers_count') int watchersCount,
      @JsonKey(name: 'forks_count') int forksCount,
      @JsonKey(name: 'open_issues_count') int openIssuesCount});

  $OwnerCopyWith<$Res> get owner;
}

/// @nodoc
class _$GithubRepositoryInfoCopyWithImpl<$Res>
    implements $GithubRepositoryInfoCopyWith<$Res> {
  _$GithubRepositoryInfoCopyWithImpl(this._value, this._then);

  final GithubRepositoryInfo _value;
  // ignore: unused_field
  final $Res Function(GithubRepositoryInfo) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? owner = freezed,
    Object? language = freezed,
    Object? stargazersCount = freezed,
    Object? watchersCount = freezed,
    Object? forksCount = freezed,
    Object? openIssuesCount = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      owner: owner == freezed
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as Owner,
      language: language == freezed
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String?,
      stargazersCount: stargazersCount == freezed
          ? _value.stargazersCount
          : stargazersCount // ignore: cast_nullable_to_non_nullable
              as int,
      watchersCount: watchersCount == freezed
          ? _value.watchersCount
          : watchersCount // ignore: cast_nullable_to_non_nullable
              as int,
      forksCount: forksCount == freezed
          ? _value.forksCount
          : forksCount // ignore: cast_nullable_to_non_nullable
              as int,
      openIssuesCount: openIssuesCount == freezed
          ? _value.openIssuesCount
          : openIssuesCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }

  @override
  $OwnerCopyWith<$Res> get owner {
    return $OwnerCopyWith<$Res>(_value.owner, (value) {
      return _then(_value.copyWith(owner: value));
    });
  }
}

/// @nodoc
abstract class _$$_GithubRepositoryInfoCopyWith<$Res>
    implements $GithubRepositoryInfoCopyWith<$Res> {
  factory _$$_GithubRepositoryInfoCopyWith(_$_GithubRepositoryInfo value,
          $Res Function(_$_GithubRepositoryInfo) then) =
      __$$_GithubRepositoryInfoCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'full_name') String name,
      @JsonKey(name: 'owner') Owner owner,
      @JsonKey(name: 'language') String? language,
      @JsonKey(name: 'stargazers_count') int stargazersCount,
      @JsonKey(name: 'watchers_count') int watchersCount,
      @JsonKey(name: 'forks_count') int forksCount,
      @JsonKey(name: 'open_issues_count') int openIssuesCount});

  @override
  $OwnerCopyWith<$Res> get owner;
}

/// @nodoc
class __$$_GithubRepositoryInfoCopyWithImpl<$Res>
    extends _$GithubRepositoryInfoCopyWithImpl<$Res>
    implements _$$_GithubRepositoryInfoCopyWith<$Res> {
  __$$_GithubRepositoryInfoCopyWithImpl(_$_GithubRepositoryInfo _value,
      $Res Function(_$_GithubRepositoryInfo) _then)
      : super(_value, (v) => _then(v as _$_GithubRepositoryInfo));

  @override
  _$_GithubRepositoryInfo get _value => super._value as _$_GithubRepositoryInfo;

  @override
  $Res call({
    Object? name = freezed,
    Object? owner = freezed,
    Object? language = freezed,
    Object? stargazersCount = freezed,
    Object? watchersCount = freezed,
    Object? forksCount = freezed,
    Object? openIssuesCount = freezed,
  }) {
    return _then(_$_GithubRepositoryInfo(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      owner: owner == freezed
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as Owner,
      language: language == freezed
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String?,
      stargazersCount: stargazersCount == freezed
          ? _value.stargazersCount
          : stargazersCount // ignore: cast_nullable_to_non_nullable
              as int,
      watchersCount: watchersCount == freezed
          ? _value.watchersCount
          : watchersCount // ignore: cast_nullable_to_non_nullable
              as int,
      forksCount: forksCount == freezed
          ? _value.forksCount
          : forksCount // ignore: cast_nullable_to_non_nullable
              as int,
      openIssuesCount: openIssuesCount == freezed
          ? _value.openIssuesCount
          : openIssuesCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GithubRepositoryInfo implements _GithubRepositoryInfo {
  const _$_GithubRepositoryInfo(
      {@JsonKey(name: 'full_name') required this.name,
      @JsonKey(name: 'owner') required this.owner,
      @JsonKey(name: 'language') required this.language,
      @JsonKey(name: 'stargazers_count') required this.stargazersCount,
      @JsonKey(name: 'watchers_count') required this.watchersCount,
      @JsonKey(name: 'forks_count') required this.forksCount,
      @JsonKey(name: 'open_issues_count') required this.openIssuesCount});

  factory _$_GithubRepositoryInfo.fromJson(Map<String, dynamic> json) =>
      _$$_GithubRepositoryInfoFromJson(json);

  @override
  @JsonKey(name: 'full_name')
  final String name;
  @override
  @JsonKey(name: 'owner')
  final Owner owner;
  @override
  @JsonKey(name: 'language')
  final String? language;
  @override
  @JsonKey(name: 'stargazers_count')
  final int stargazersCount;
  @override
  @JsonKey(name: 'watchers_count')
  final int watchersCount;
  @override
  @JsonKey(name: 'forks_count')
  final int forksCount;
  @override
  @JsonKey(name: 'open_issues_count')
  final int openIssuesCount;

  @override
  String toString() {
    return 'GithubRepositoryInfo(name: $name, owner: $owner, language: $language, stargazersCount: $stargazersCount, watchersCount: $watchersCount, forksCount: $forksCount, openIssuesCount: $openIssuesCount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GithubRepositoryInfo &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.owner, owner) &&
            const DeepCollectionEquality().equals(other.language, language) &&
            const DeepCollectionEquality()
                .equals(other.stargazersCount, stargazersCount) &&
            const DeepCollectionEquality()
                .equals(other.watchersCount, watchersCount) &&
            const DeepCollectionEquality()
                .equals(other.forksCount, forksCount) &&
            const DeepCollectionEquality()
                .equals(other.openIssuesCount, openIssuesCount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(owner),
      const DeepCollectionEquality().hash(language),
      const DeepCollectionEquality().hash(stargazersCount),
      const DeepCollectionEquality().hash(watchersCount),
      const DeepCollectionEquality().hash(forksCount),
      const DeepCollectionEquality().hash(openIssuesCount));

  @JsonKey(ignore: true)
  @override
  _$$_GithubRepositoryInfoCopyWith<_$_GithubRepositoryInfo> get copyWith =>
      __$$_GithubRepositoryInfoCopyWithImpl<_$_GithubRepositoryInfo>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GithubRepositoryInfoToJson(this);
  }
}

abstract class _GithubRepositoryInfo implements GithubRepositoryInfo {
  const factory _GithubRepositoryInfo(
      {@JsonKey(name: 'full_name')
          required final String name,
      @JsonKey(name: 'owner')
          required final Owner owner,
      @JsonKey(name: 'language')
          required final String? language,
      @JsonKey(name: 'stargazers_count')
          required final int stargazersCount,
      @JsonKey(name: 'watchers_count')
          required final int watchersCount,
      @JsonKey(name: 'forks_count')
          required final int forksCount,
      @JsonKey(name: 'open_issues_count')
          required final int openIssuesCount}) = _$_GithubRepositoryInfo;

  factory _GithubRepositoryInfo.fromJson(Map<String, dynamic> json) =
      _$_GithubRepositoryInfo.fromJson;

  @override
  @JsonKey(name: 'full_name')
  String get name => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'owner')
  Owner get owner => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'language')
  String? get language => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'stargazers_count')
  int get stargazersCount => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'watchers_count')
  int get watchersCount => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'forks_count')
  int get forksCount => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'open_issues_count')
  int get openIssuesCount => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_GithubRepositoryInfoCopyWith<_$_GithubRepositoryInfo> get copyWith =>
      throw _privateConstructorUsedError;
}
