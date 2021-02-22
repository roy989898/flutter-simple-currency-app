// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'RateClient.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

class _RestClient implements RestClient {
  _RestClient(this._dio, {this.baseUrl}) {
    ArgumentError.checkNotNull(_dio, '_dio');
    baseUrl ??= 'https://api.exchangeratesapi.io/';
  }

  final Dio _dio;

  String baseUrl;

  @override
  Future<LatestRateResponse> getLatestRate(base) async {
    ArgumentError.checkNotNull(base, 'base');
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'base': base};
    final _data = <String, dynamic>{};
    final _result = await _dio.request<Map<String, dynamic>>('/latest',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'GET',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = LatestRateResponse.fromJson(_result.data);
    return value;
  }

  @override
  Future<HistoryResponse> getHistory(startAt, endAt, base) async {
    ArgumentError.checkNotNull(startAt, 'startAt');
    ArgumentError.checkNotNull(endAt, 'endAt');
    ArgumentError.checkNotNull(base, 'base');
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'start_at': startAt,
      r'end_at': endAt,
      r'base': base
    };
    final _data = <String, dynamic>{};
    final _result = await _dio.request<Map<String, dynamic>>('/history',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'GET',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = HistoryResponse.fromJson(_result.data);
    return value;
  }
}
