import 'package:freezed_annotation/freezed_annotation.dart';

part 'response.freezed.dart';
part 'response.g.dart';

@Freezed(genericArgumentFactories: true)
class CommonResponse<T> with _$CommonResponse<T> {
  const factory CommonResponse({
    T? result,
  }) = _CommonResponse;

  factory CommonResponse.fromJson(
    Map<String, dynamic> json,
    T Function(Object?) fromJsonT,
  ) =>
      _$CommonResponseFromJson(json, fromJsonT);
}
