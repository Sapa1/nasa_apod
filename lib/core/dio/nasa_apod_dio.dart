import 'package:dio/io.dart';

class NasaApodDio extends DioForNative {
  NasaApodDio() {
    options.baseUrl = 'https://api.nasa.gov/planetary/apod';
  }
}
