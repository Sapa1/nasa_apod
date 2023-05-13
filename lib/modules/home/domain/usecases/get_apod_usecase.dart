import 'package:dartz/dartz.dart';
import 'package:nasa_apod/modules/home/data/model/apod_response.dart';

import '../../../../core/error/failure.dart';
import '../../../../core/usecases/usecase.dart';
import '../repositories/apod_repository.dart';

class GetApodUseCase implements UseCase<ApodResponse, NoParams> {
  final ApodRepository apodRepository;

  GetApodUseCase({required this.apodRepository});

  @override
  Future<Either<Failure, ApodResponse>> call([void params]) async =>
      apodRepository.getApod();
}
