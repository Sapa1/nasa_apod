import 'dart:convert';

import 'package:equatable/equatable.dart';
import 'package:nasa_apod/modules/home/domain/entities/apod_entity.dart';

class ApodResponse extends Equatable {
  final List<ApodEntity> entity;

  const ApodResponse({
    required this.entity,
  });

  ApodResponse copyWith({
    List<ApodEntity>? entity,
  }) {
    return ApodResponse(
      entity: entity ?? this.entity,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'entity': entity.map((x) => x.toMap()).toList(),
    };
  }

  factory ApodResponse.fromMap(dynamic data) {
    final List<Map<String, dynamic>> list = List.from(data);
    return ApodResponse(
      entity: list.map(ApodEntity.fromMap).toList(),
    );
  }

  String toJson() => json.encode(toMap());

  factory ApodResponse.fromJson(String source) =>
      ApodResponse.fromMap(json.decode(source));

  @override
  String toString() => 'ApodResponse(entity: $entity)';

  @override
  List<Object> get props => [entity];
}
