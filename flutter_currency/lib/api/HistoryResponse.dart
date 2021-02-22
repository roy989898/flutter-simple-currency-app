import 'package:json_annotation/json_annotation.dart';

part 'HistoryResponse.g.dart';

@JsonSerializable()
class HistoryResponse {
  String base;
  String date;
  Map<String, Map<String, double>> rates;
}
