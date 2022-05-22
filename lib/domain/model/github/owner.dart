import 'package:freezed_annotation/freezed_annotation.dart';

part '../../../generated/domain/model/github/owner.freezed.dart';
part '../../../generated/domain/model/github/owner.g.dart';

@freezed
class Owner with _$Owner {
  const factory Owner({
    @JsonKey(name: 'avatar_url') required String avatarUrl,
  }) = _Owner;

  factory Owner.fromJson(Map<String, dynamic> json) => _$OwnerFromJson(json);
}
