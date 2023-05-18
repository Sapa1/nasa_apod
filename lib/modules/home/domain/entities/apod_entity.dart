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

  factory ApodEntity.fromMap(Map<String, dynamic> map) {
    if (map['thumbnail_url'] != null) {
      return ApodEntity(
        date: map['date'] ?? '',
        description: map['explanation'] ?? '',
        url: map['thumbnail_url'] ?? '',
        title: map['title'] ?? '',
      );
    } else {
      return ApodEntity(
        date: map['date'] ?? '',
        description: map['explanation'] ?? '',
        url: map['hdurl'] ?? '',
        title: map['title'] ?? '',
      );
    }
  }

  @override
  String toString() {
    return 'ApodEntity(date: $date, description: $description, url: $url, title: $title)';
  }

  @override
  List<Object> get props => [date, description, url, title];
}
