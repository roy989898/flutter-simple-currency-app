import 'package:json_annotation/json_annotation.dart';

part 'Rates.g.dart';

@JsonSerializable()
class Rates {
  double AUD;
  double BGN;
  double BRL;
  double CAD;
  double CHF;
  double CNY;
  double CZK;
  double DKK;
  double EUR;
  double GBP;
  double HKD;
  double HRK;
  double HUF;
  double IDR;
  double ILS;
  double INR;
  double ISK;
  double JPY;
  double KRW;
  double MXN;
  double MYR;
  double NOK;
  double NZD;
  double PHP;
  double PLN;
  double RON;
  double RUB;
  double SEK;
  double SGD;
  double THB;
  double TRY;
  double USD;
  double ZAR;

  Rates(
      {this.AUD,
      this.BGN,
      this.BRL,
      this.CAD,
      this.CHF,
      this.CNY,
      this.CZK,
      this.DKK,
      this.EUR,
      this.GBP,
      this.HKD,
      this.HRK,
      this.HUF,
      this.IDR,
      this.ILS,
      this.INR,
      this.ISK,
      this.JPY,
      this.KRW,
      this.MXN,
      this.MYR,
      this.NOK,
      this.NZD,
      this.PHP,
      this.PLN,
      this.RON,
      this.RUB,
      this.SEK,
      this.SGD,
      this.THB,
      this.TRY,
      this.USD,
      this.ZAR});

  factory Rates.fromJson(Map<String, dynamic> json) => _$RatesFromJson(json);

  Map<String, dynamic> toJson() => _$RatesToJson(this);
}
