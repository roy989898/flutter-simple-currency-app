import 'package:json_annotation/json_annotation.dart';

part 'HistoryResponse.g.dart';

@JsonSerializable()
class HistoryResponse {
  String base;
  String start_at;
  String end_at;
  Map<String, Map<String, double>> rates;

  HistoryResponse({this.base, this.start_at, this.end_at, this.rates});

  factory HistoryResponse.fromJson(Map<String, dynamic> json) =>
      _$HistoryResponseFromJson(json);

  Map<String, dynamic> toJson() => _$HistoryResponseToJson(this);
}
