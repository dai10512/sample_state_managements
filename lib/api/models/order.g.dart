// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OrderImpl _$$OrderImplFromJson(Map<String, dynamic> json) => _$OrderImpl(
      id: json['id'] as int?,
      petId: json['petId'] as int?,
      quantity: json['quantity'] as int?,
      shipDate: json['shipDate'] == null
          ? null
          : DateTime.parse(json['shipDate'] as String),
      status: json['status'] == null
          ? null
          : Status2.fromJson(json['status'] as String),
      complete: json['complete'] as bool?,
    );

Map<String, dynamic> _$$OrderImplToJson(_$OrderImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'petId': instance.petId,
      'quantity': instance.quantity,
      'shipDate': instance.shipDate?.toIso8601String(),
      'status': _$Status2EnumMap[instance.status],
      'complete': instance.complete,
    };

const _$Status2EnumMap = {
  Status2.placed: 'placed',
  Status2.approved: 'approved',
  Status2.delivered: 'delivered',
  Status2.$unknown: r'$unknown',
};
