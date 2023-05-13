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
    emit(const ApodState.loading());
    await event.when(
      getApod: () async {
        final response = await getApodUseCase();

        emit(
          response.fold(
            (failure) => const ApodState.failure(''),
            (result) => ApodState.success(apodEntity: result.entity),
          ),
        );
      },
    );
  }
}
