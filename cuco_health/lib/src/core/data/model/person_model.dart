import 'dart:convert';

import '../../domain/entities/person_entities.dart';

class PersonModel extends Person {
  PersonModel({
    required String name,
    required String email,
    required String phone,
    required String local,
    required int age,
    required String photo,
    required String title,
  }) : super(
          name: name,
          email: email,
          phone: phone,
          local: local,
          age: age,
          photo: photo,
          title: title,
        );

  @override
  PersonModel copyWith({
    String? name,
    String? email,
    String? phone,
    String? local,
    int? age,
    String? photo,
    String? title,
  }) {
    return PersonModel(
      name: name ?? this.name,
      email: email ?? this.email,
      phone: phone ?? this.phone,
      local: local ?? this.local,
      age: age ?? this.age,
      photo: photo ?? this.photo,
      title: title ?? this.title,
    );
  }

  factory PersonModel.fromEntity(Person entity) {
    return PersonModel(
      name: entity.name,
      email: entity.email,
      phone: entity.phone,
      local: entity.local,
      age: entity.age,
      photo: entity.photo,
      title: entity.title,
    );
  }

  Person toEntity() {
    return Person(
      name: name,
      email: email,
      phone: phone,
      local: local,
      age: age,
      photo: photo,
      title: title,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'email': email,
      'phone': phone,
      'local': local,
      'age': age,
      'photo': photo,
      'title': title,
    };
  }

  factory PersonModel.fromMap(Map<dynamic, dynamic> map) {
    return PersonModel(
      name: map['name']['first'] +' '+map['name']['last'] ?? '',
      email: map['email'] ?? '',
      phone: map['cell'] ?? '',
      local: map['location']['city'] +' - '+ map['location']['country'] ?? '',
      age: map['dob']['age'] ?? 0,
      title: map['name']['title'] ?? '',
      photo: map['picture']['large'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());


  @override
  String toString() {
    return 'PersonModel(name: $name, email: $email, phone: $phone, local: $local, age: $age, photo: $photo, title: $title)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is PersonModel &&
        other.name == name &&
        other.email == email &&
        other.phone == phone &&
        other.local == local &&
        other.age == age &&
        other.photo == photo &&
        other.title == title;
  }

  @override
  int get hashCode {
    return name.hashCode ^
        email.hashCode ^
        phone.hashCode ^
        local.hashCode ^
        age.hashCode ^
        photo.hashCode ^
        title.hashCode;
  }
}
