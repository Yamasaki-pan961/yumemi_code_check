// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of '../../../../domain/model/github/search_repository_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SearchRepositoryResponse _$SearchRepositoryResponseFromJson(
    Map<String, dynamic> json) {
  return _SearchRepositoryResponse.fromJson(json);
}

/// @nodoc
mixin _$SearchRepositoryResponse {
  @JsonKey(name: 'items')
  List<GithubRepositoryInfo> get items => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_count')
  int get totalCount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SearchRepositoryResponseCopyWith<SearchRepositoryResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchRepositoryResponseCopyWith<$Res> {
  factory $SearchRepositoryResponseCopyWith(SearchRepositoryResponse value,
          $Res Function(SearchRepositoryResponse) then) =
      _$SearchRepositoryResponseCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'items') List<GithubRepositoryInfo> items,
      @JsonKey(name: 'total_count') int totalCount});
}

/// @nodoc
class _$SearchRepositoryResponseCopyWithImpl<$Res>
    implements $SearchRepositoryResponseCopyWith<$Res> {
  _$SearchRepositoryResponseCopyWithImpl(this._value, this._then);

  final SearchRepositoryResponse _value;
  // ignore: unused_field
  final $Res Function(SearchRepositoryResponse) _then;

  @override
  $Res call({
    Object? items = freezed,
    Object? totalCount = freezed,
  }) {
    return _then(_value.copyWith(
      items: items == freezed
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<GithubRepositoryInfo>,
      totalCount: totalCount == freezed
          ? _value.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$$_SearchRepositoryResponseCopyWith<$Res>
    implements $SearchRepositoryResponseCopyWith<$Res> {
  factory _$$_SearchRepositoryResponseCopyWith(
          _$_SearchRepositoryResponse value,
          $Res Function(_$_SearchRepositoryResponse) then) =
      __$$_SearchRepositoryResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'items') List<GithubRepositoryInfo> items,
      @JsonKey(name: 'total_count') int totalCount});
}

/// @nodoc
class __$$_SearchRepositoryResponseCopyWithImpl<$Res>
    extends _$SearchRepositoryResponseCopyWithImpl<$Res>
    implements _$$_SearchRepositoryResponseCopyWith<$Res> {
  __$$_SearchRepositoryResponseCopyWithImpl(_$_SearchRepositoryResponse _value,
      $Res Function(_$_SearchRepositoryResponse) _then)
      : super(_value, (v) => _then(v as _$_SearchRepositoryResponse));

  @override
  _$_SearchRepositoryResponse get _value =>
      super._value as _$_SearchRepositoryResponse;

  @override
  $Res call({
    Object? items = freezed,
    Object? totalCount = freezed,
  }) {
    return _then(_$_SearchRepositoryResponse(
      items: items == freezed
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<GithubRepositoryInfo>,
      totalCount: totalCount == freezed
          ? _value.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SearchRepositoryResponse implements _SearchRepositoryResponse {
  const _$_SearchRepositoryResponse(
      {@JsonKey(name: 'items') required final List<GithubRepositoryInfo> items,
      @JsonKey(name: 'total_count') required this.totalCount})
      : _items = items;

  factory _$_SearchRepositoryResponse.fromJson(Map<String, dynamic> json) =>
      _$$_SearchRepositoryResponseFromJson(json);

  final List<GithubRepositoryInfo> _items;
  @override
  @JsonKey(name: 'items')
  List<GithubRepositoryInfo> get items {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  @JsonKey(name: 'total_count')
  final int totalCount;

  @override
  String toString() {
    return 'SearchRepositoryResponse(items: $items, totalCount: $totalCount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SearchRepositoryResponse &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            const DeepCollectionEquality()
                .equals(other.totalCount, totalCount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_items),
      const DeepCollectionEquality().hash(totalCount));

  @JsonKey(ignore: true)
  @override
  _$$_SearchRepositoryResponseCopyWith<_$_SearchRepositoryResponse>
      get copyWith => __$$_SearchRepositoryResponseCopyWithImpl<
          _$_SearchRepositoryResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SearchRepositoryResponseToJson(this);
  }
}

abstract class _SearchRepositoryResponse implements SearchRepositoryResponse {
  const factory _SearchRepositoryResponse(
      {@JsonKey(name: 'items')
          required final List<GithubRepositoryInfo> items,
      @JsonKey(name: 'total_count')
          required final int totalCount}) = _$_SearchRepositoryResponse;

  factory _SearchRepositoryResponse.fromJson(Map<String, dynamic> json) =
      _$_SearchRepositoryResponse.fromJson;

  @override
  @JsonKey(name: 'items')
  List<GithubRepositoryInfo> get items => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'total_count')
  int get totalCount => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_SearchRepositoryResponseCopyWith<_$_SearchRepositoryResponse>
      get copyWith => throw _privateConstructorUsedError;
}
