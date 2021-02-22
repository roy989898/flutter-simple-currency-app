import 'package:dio/dio.dart';

import 'HistoryResponse.dart';
import 'LatestRateResponse.dart';
import 'RateClient.dart';

class ApiManager {
  RestClient _client;

  ApiManager() {
    final dio = Dio();
    _client = RestClient(dio);
  }

  Future<LatestRateResponse> getLatestRate(String base) {
    return _client.getLatestRate(base);
  }

  Future<HistoryResponse> getHistory(
      String startAt, String endAt, String base) {
    return _client.getHistory(startAt, endAt, base);
  }

  Future<List<String>> getCurrency() {
    return _client.getLatestRate("USD").then((LatestRateResponse value) {
      return value.rates.keys.toList();
    });
  }
}
