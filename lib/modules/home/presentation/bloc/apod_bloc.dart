import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';

import '../../domain/usecases/get_apod_usecase.dart';
import 'apod_event.dart';
import 'apod_state.dart';

class ApodBloc extends Bloc<ApodEvent, ApodState> {
  final GetApodUseCase getApodUseCase;
  ApodBloc({
    required this.getApodUseCase,
  }) : super(const ApodState.initial()) {
    on<ApodEvent>(_onEvent);
  }

  Future<void> _onEvent(
    ApodEvent event,
    Emitter<ApodState> emit,
  ) async {
    await event.when(
      getApod: (startDate) async {
        emit(const ApodState.loading());
        final response = await getApodUseCase(startDate);

        emit(
          response.fold(
            (failure) => ApodState.failure(failure.message),
            (result) {
              return ApodState.success(
                apodEntity: result.entity.reversed.toList(),
              );
            },
          ),
        );
      },
      getMoreApods: (startDate) async {
        // final currentState = (state as ApodStateSuccess);
        // emit(ApodState.gustaLoading(apodEntity: currentState.apodEntity));

        final response = await getApodUseCase(startDate);

        emit(
          response.fold(
            (failure) => ApodState.failure(failure.message),
            (result) {
              return ApodState.success(
                apodEntity: result.entity.reversed.toList(),
              );
            },
          ),
        );
      },
    );
  }
}
