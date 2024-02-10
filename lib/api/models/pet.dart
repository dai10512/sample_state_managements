// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'category.dart';
import 'status.dart';
import 'tag.dart';

part 'pet.freezed.dart';
part 'pet.g.dart';

@Freezed()
class Pet with _$Pet {
  const factory Pet({
    required String name,
    required List<String> photoUrls,
    int? id,
    Category? category,
    List<Tag>? tags,

    /// pet status in the store
    Status? status,
  }) = _Pet;
  
  factory Pet.fromJson(Map<String, Object?> json) => _$PetFromJson(json);
}
