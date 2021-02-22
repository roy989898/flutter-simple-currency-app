import 'Rates.dart';

class LatestRateResponse {
  String base;
  String date;
  Rates rates;

  LatestRateResponse({this.base, this.date, this.rates});

  factory LatestRateResponse.fromJson(Map<String, dynamic> json) {
    return LatestRateResponse(
      base: json['base'],
      date: json['date'],
      rates: json['rates'] != null ? Rates.fromJson(json['rates']) : null,
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['base'] = this.base;
    data['date'] = this.date;
    if (this.rates != null) {
      data['rates'] = this.rates.toJson();
    }
    return data;
  }
}
