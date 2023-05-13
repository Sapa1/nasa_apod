import 'package:freezed_annotation/freezed_annotation.dart';

part 'apod_event.freezed.dart';

@freezed
abstract class ApodEvent with _$ApodEvent {
  const factory ApodEvent.getApod() = _ApodEventGetApod;
}
