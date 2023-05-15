import 'package:dio/io.dart';

import 'nasa_apod_dio_interceptor.dart';

class NasaApodDio extends DioForNative {
  NasaApodDio() {
    options.baseUrl =
        'https://api.nasa.gov/planetary/apod?api_key=ml3Kr3uy2foGy0yxubIx7lXbQZyHjTw5290ZQfRb';

    interceptors.add(NasaApodDioInterceptor());
  }
}
