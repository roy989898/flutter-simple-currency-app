import 'Rates.dart';
import 'package:json_annotation/json_annotation.dart';

part 'LatestRateResponse.g.dart';

@JsonSerializable()
class LatestRateResponse {
  String base;
  String date;
  Rates rates;

  LatestRateResponse({this.base, this.date, this.rates});

  factory LatestRateResponse.fromJson(Map<String, dynamic> json) =>
      _$LatestRateResponseFromJson(json);

  Map<String, dynamic> toJson() => _$LatestRateResponseToJson(this);
}
