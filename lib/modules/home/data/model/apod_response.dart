import 'package:equatable/equatable.dart';
import 'package:nasa_apod/modules/home/domain/entities/apod_entity.dart';

class ApodResponse extends Equatable {
  final List<ApodEntity> entity;

  const ApodResponse({
    required this.entity,
  });

  factory ApodResponse.fromMap(dynamic data) {
    final List<Map<String, dynamic>> list = List.from(data);
    return ApodResponse(
      entity: list.map(ApodEntity.fromMap).toList(),
    );
  }

  @override
  String toString() => 'ApodResponse(entity: $entity)';

  @override
  List<Object> get props => [entity];
}
