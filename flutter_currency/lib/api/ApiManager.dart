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
}
