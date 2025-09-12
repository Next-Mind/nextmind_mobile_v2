// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_address.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UserAddress _$UserAddressFromJson(Map<String, dynamic> json) => _UserAddress(
  id: json['id'] as String,
  label: json['label'] as String,
  postalCode: json['postalCode'] as String,
  street: json['street'] as String,
  complement: json['complement'] as String,
  neighborhood: json['neighborhood'] as String,
  city: json['city'] as String,
  number: json['number'] as String,
  state: json['state'] as String,
  country: json['country'] as String,
  isPrimary: json['isPrimary'] as bool,
);

Map<String, dynamic> _$UserAddressToJson(_UserAddress instance) =>
    <String, dynamic>{
      'id': instance.id,
      'label': instance.label,
      'postalCode': instance.postalCode,
      'street': instance.street,
      'complement': instance.complement,
      'neighborhood': instance.neighborhood,
      'city': instance.city,
      'number': instance.number,
      'state': instance.state,
      'country': instance.country,
      'isPrimary': instance.isPrimary,
    };
