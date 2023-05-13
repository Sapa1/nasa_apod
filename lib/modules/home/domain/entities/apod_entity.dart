import 'dart:convert';

import 'package:equatable/equatable.dart';

class ApodEntity extends Equatable {
  final String date;
  final String description;
  final String url;
  final String title;

  const ApodEntity({
    required this.date,
    required this.description,
    required this.url,
    required this.title,
  });

  ApodEntity copyWith({
    String? date,
    String? description,
    String? url,
    String? title,
  }) {
    return ApodEntity(
      date: date ?? this.date,
      description: description ?? this.description,
      url: url ?? this.url,
      title: title ?? this.title,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'date': date,
      'explanation': description,
      'hdurl': url,
      'title': title,
    };
  }

  factory ApodEntity.fromMap(Map<String, dynamic> map) {
    return ApodEntity(
      date: map['date'] ?? '',
      description: map['explanation'] ?? '',
      url: map['hdurl'] ?? '',
      title: map['title'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory ApodEntity.fromJson(String source) =>
      ApodEntity.fromMap(json.decode(source));

  @override
  String toString() {
    return 'ApodEntity(date: $date, description: $description, url: $url, title: $title)';
  }

  @override
  List<Object> get props => [date, description, url, title];
}
