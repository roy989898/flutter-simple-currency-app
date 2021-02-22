import 'package:json_annotation/json_annotation.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';

import 'HistoryResponse.dart';
import 'LatestRateResponse.dart';

part 'RateClient.g.dart';

@RestApi(baseUrl: "https://api.exchangeratesapi.io/")
abstract class RestClient {
  factory RestClient(Dio dio, {String baseUrl}) = _RestClient;

  // https://api.exchangeratesapi.io/latest?base=USD
  @GET("/latest")
  Future<LatestRateResponse> getLatestRate(
    @Query("base") String base,
  );

  // https://api.exchangeratesapi.io/history?start_at=2018-01-01&end_at=2018-09-01&base=USD

  @GET("/history")
  Future<HistoryResponse> getHistory(
    @Query("start_at") String startAt,
    @Query("end_at") String endAt,
    @Query("base") String base,
  );
}
