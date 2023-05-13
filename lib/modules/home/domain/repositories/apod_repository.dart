import 'package:dartz/dartz.dart';

import '../../../../core/error/failure.dart';
import '../../data/model/apod_response.dart';

abstract class ApodRepository {
  Future<Either<Failure, ApodResponse>> getApod();
}
