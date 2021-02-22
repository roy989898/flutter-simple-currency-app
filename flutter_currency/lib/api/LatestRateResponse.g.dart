// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'LatestRateResponse.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LatestRateResponse _$LatestRateResponseFromJson(Map<String, dynamic> json) {
  return LatestRateResponse(
    base: json['base'] as String,
    date: json['date'] as String,
    rates: json['rates'] == null
        ? null
        : Rates.fromJson(json['rates'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$LatestRateResponseToJson(LatestRateResponse instance) =>
    <String, dynamic>{
      'base': instance.base,
      'date': instance.date,
      'rates': instance.rates,
    };
