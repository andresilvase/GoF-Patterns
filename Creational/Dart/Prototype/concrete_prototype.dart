import 'abstract_prototype.dart';
import 'dart:convert';

enum PersonEnum { profession, birthDate, name }

class Person extends Prototype<Person> {
  final String profession;
  final String birthDate;
  final String name;

  Person({
    required this.profession,
    required this.birthDate,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      PersonEnum.profession.name: profession,
      PersonEnum.birthDate.name: birthDate,
      PersonEnum.name.name: name,
    };
  }

  factory Person.fromMap(Map<String, dynamic> map) {
    return Person(
      profession: map[PersonEnum.profession.name] as String,
      birthDate: map[PersonEnum.birthDate.name] as String,
      name: map[PersonEnum.name.name] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Person.fromJson(String source) =>
      Person.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() =>
      'Person(profession: $profession, birthDate: $birthDate, name: $name)';

  @override
  bool operator ==(covariant Person other) {
    if (identical(this, other)) return true;

    return other.profession == profession &&
        other.birthDate == birthDate &&
        other.name == name;
  }

  @override
  int get hashCode => profession.hashCode ^ birthDate.hashCode ^ name.hashCode;

  @override
  Person copyWith({
    String? profession,
    String? birthDate,
    String? name,
  }) {
    return Person(
      profession: profession ?? this.profession,
      birthDate: birthDate ?? this.birthDate,
      name: name ?? this.name,
    );
  }
}
