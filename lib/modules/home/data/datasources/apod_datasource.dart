import 'package:nasa_apod/modules/home/data/model/apod_response.dart';

abstract class ApodDataSource {
  Future<ApodResponse> getApod(String startDate);
}
