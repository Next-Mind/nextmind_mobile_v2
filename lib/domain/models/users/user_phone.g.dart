// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_phone.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UserPhone _$UserPhoneFromJson(Map<String, dynamic> json) => _UserPhone(
  id: json['id'] as String,
  countryCode: (json['countryCode'] as num).toInt(),
  areaCode: (json['areaCode'] as num).toInt(),
  number: json['number'] as String,
  isWhatsapp: json['isWhatsapp'] as bool,
  isPrimary: json['isPrimary'] as bool,
);

Map<String, dynamic> _$UserPhoneToJson(_UserPhone instance) =>
    <String, dynamic>{
      'id': instance.id,
      'countryCode': instance.countryCode,
      'areaCode': instance.areaCode,
      'number': instance.number,
      'isWhatsapp': instance.isWhatsapp,
      'isPrimary': instance.isPrimary,
    };
