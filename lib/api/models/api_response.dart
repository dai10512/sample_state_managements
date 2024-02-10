// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_response.freezed.dart';
part 'api_response.g.dart';

@Freezed()
class ApiResponse with _$ApiResponse {
  const factory ApiResponse({
    int? code,
    String? type,
    String? message,
  }) = _ApiResponse;

  factory ApiResponse.fromJson(Map<String, Object?> json) => _$ApiResponseFromJson(json);
}
