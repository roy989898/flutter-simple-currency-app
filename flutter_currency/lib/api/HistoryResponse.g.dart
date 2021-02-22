// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'HistoryResponse.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HistoryResponse _$HistoryResponseFromJson(Map<String, dynamic> json) {
  return HistoryResponse(
    base: json['base'] as String,
    start_at: json['start_at'] as String,
    end_at: json['end_at'] as String,
    rates: (json['rates'] as Map<String, dynamic>)?.map(
      (k, e) => MapEntry(
          k,
          (e as Map<String, dynamic>)?.map(
            (k, e) => MapEntry(k, (e as num)?.toDouble()),
          )),
    ),
  );
}

Map<String, dynamic> _$HistoryResponseToJson(HistoryResponse instance) =>
    <String, dynamic>{
      'base': instance.base,
      'start_at': instance.start_at,
      'end_at': instance.end_at,
      'rates': instance.rates,
    };
