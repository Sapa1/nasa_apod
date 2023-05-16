import 'package:freezed_annotation/freezed_annotation.dart';

part 'apod_event.freezed.dart';

@freezed
abstract class ApodEvent with _$ApodEvent {
  const factory ApodEvent.getApod({required String startDate}) =
      _ApodEventGetApod;
  const factory ApodEvent.getNextPage({required String startDate}) =
      _ApodEventGetNextPage;
}
