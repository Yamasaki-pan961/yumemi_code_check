import 'package:freezed_annotation/freezed_annotation.dart';
 
part '../../generated/domain/model/result.freezed.dart';
 
@freezed
class Result<T> with _$Result<T> {
  const factory Result.success(T value) = Success<T>;
  const factory Result.failure(Exception error) = Failure<T>;
}
