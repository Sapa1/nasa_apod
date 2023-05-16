import 'package:flutter/material.dart';
import 'package:nasa_apod/modules/home/data/model/apod_response.dart';

import '../../../../core/dio/nasa_apod_dio.dart';
import 'apod_datasource.dart';

class ApodDataSourceImpl implements ApodDataSource {
  final NasaApodDio nasaApodDio;

  ApodDataSourceImpl({required this.nasaApodDio});

  @override
  Future<ApodResponse> getApod() async {
    try {
      final result = await nasaApodDio.get(
        '',
        queryParameters: {
          "start_date": "2023-05-05",
        },
      );
      //TODO: fazer tratamento para não receber video
      if (result.data is List) {
        return ApodResponse.fromMap(result.data);
      } else {
        return ApodResponse.fromMap([result.data]);
      }
    } catch (e) {
      debugPrint('Caindo aq sem net $e');
      rethrow;
    }
  }
}
