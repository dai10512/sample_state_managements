// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pet.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PetImpl _$$PetImplFromJson(Map<String, dynamic> json) => _$PetImpl(
      name: json['name'] as String,
      photoUrls:
          (json['photoUrls'] as List<dynamic>).map((e) => e as String).toList(),
      id: json['id'] as int?,
      category: json['category'] == null
          ? null
          : Category.fromJson(json['category'] as Map<String, dynamic>),
      tags: (json['tags'] as List<dynamic>?)
          ?.map((e) => Tag.fromJson(e as Map<String, dynamic>))
          .toList(),
      status: json['status'] == null
          ? null
          : Status.fromJson(json['status'] as String),
    );

Map<String, dynamic> _$$PetImplToJson(_$PetImpl instance) => <String, dynamic>{
      'name': instance.name,
      'photoUrls': instance.photoUrls,
      'id': instance.id,
      'category': instance.category,
      'tags': instance.tags,
      'status': _$StatusEnumMap[instance.status],
    };

const _$StatusEnumMap = {
  Status.available: 'available',
  Status.pending: 'pending',
  Status.sold: 'sold',
  Status.$unknown: r'$unknown',
};
