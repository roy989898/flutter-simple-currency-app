import 'package:json_annotation/json_annotation.dart';

part 'HistoryResponse.g.dart';

@JsonSerializable()
class HistoryResponse {
  String base;
  String date;
  Map<String, Map<String, double>> rates;

  HistoryResponse({this.base, this.date, this.rates});

  factory HistoryResponse.fromJson(Map<String, dynamic> json) =>
      _$HistoryResponseFromJson(json);

  Map<String, dynamic> toJson() => _$HistoryResponseToJson(this);
}
