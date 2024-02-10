// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

/// Order Status
@JsonEnum()
enum Status2 {
  @JsonValue('placed')
  placed('placed'),

  @JsonValue('approved')
  approved('approved'),

  @JsonValue('delivered')
  delivered('delivered'),

  /// Default value for all unparsed values, allows backward compatibility when adding new values on the backend.
  $unknown(null);

  const Status2(this.json);

  factory Status2.fromJson(String json) => values.firstWhere(
        (e) => e.json == json,
        orElse: () => $unknown,
      );

  final String? json;
}
