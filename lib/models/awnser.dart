import 'dart:convert';

class Awnser {
  final String title;
  final bool isRight;

  Awnser({
    required this.title,
    this.isRight = false,
  });

  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'isRight': isRight,
    };
  }

  factory Awnser.fromMap(Map<String, dynamic> map) {
    return Awnser(
      title: map['title'],
      isRight: map['isRight'] ?? false,
    );
  }

  String toJson() => json.encode(toMap());

  factory Awnser.fromJson(String source) => Awnser.fromMap(json.decode(source));
}
