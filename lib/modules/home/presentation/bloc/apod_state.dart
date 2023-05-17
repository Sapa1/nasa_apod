import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nasa_apod/modules/home/domain/entities/apod_entity.dart';

part 'apod_state.freezed.dart';

@freezed
abstract class ApodState with _$ApodState {
  const factory ApodState.initial() = _ApodStateInitial;
  const factory ApodState.loading() = _ApodStateLoading;
  // const factory ApodState.moreApodsLoading({required List<ApodEntity> apodEntity}) =
  //     _ApodStateMoreApodsLoading;
  const factory ApodState.failure(String message) = _ApodStateFailure;
  const factory ApodState.success({required List<ApodEntity> apodEntity}) =
      _ApodStateSuccess;
}
