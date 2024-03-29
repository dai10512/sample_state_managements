// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@Freezed()
class User with _$User {
  const factory User({
    int? id,
    String? username,
    String? firstName,
    String? lastName,
    String? email,
    String? password,
    String? phone,

    /// User Status
    int? userStatus,
  }) = _User;

  factory User.fromJson(Map<String, Object?> json) => _$UserFromJson(json);
}
