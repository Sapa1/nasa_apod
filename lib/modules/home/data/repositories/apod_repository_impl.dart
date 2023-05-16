import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:nasa_apod/modules/home/data/model/apod_response.dart';

import '../../../../core/connection_status/connection_status.dart';
import '../../../../core/error/failure.dart';
import '../../../../core/helpers/handle_failures.dart';
import '../../domain/repositories/apod_repository.dart';
import '../datasources/apod_datasource.dart';

class ApodRepositoryImpl extends ApodRepository with HandleFailures {
  final ApodDataSource _apodDataSource;
  final ConnectionStatus _connectionStatus;

  ApodRepositoryImpl(
    this._apodDataSource,
    this._connectionStatus,
  );

  @override
  Future<Either<Failure, ApodResponse>> getApod(startDate) async {
    try {
      final result = await _apodDataSource.getApod(startDate);
      return Right(result);
    } on DioError catch (e, s) {
      return Left(await handleFailure(_connectionStatus, e, s));
    } on Exception catch (e, s) {
      return Left(await handleFailure(_connectionStatus, e, s));
    }
  }
}
