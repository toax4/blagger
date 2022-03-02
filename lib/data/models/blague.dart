// 🎯 Dart imports:
import 'dart:convert';

class Blague {
  int id;
  String type, joke, answer;

  Blague({
    this.id = 0,
    this.answer = "",
    this.type = "",
    this.joke = "",
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'answer': answer,
      'type': type,
      'joke': joke,
    };
  }

  String toJson() => json.encode(toMap());

  factory Blague.fromMap(Map<String, dynamic> map) {
    return Blague(
      id: map['id'],
      answer: map["answer"],
      type: map["type"],
      joke: map["joke"],
    );
  }
  factory Blague.fromJson(String source) => Blague.fromMap(json.decode(source));

  @override
  String toString() => 'Blague(id: $id, answer: $answer)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Blague && other.id == id && other.answer == answer;
  }
}
