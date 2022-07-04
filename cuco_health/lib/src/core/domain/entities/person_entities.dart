

class Person {
  final String name;
  final String email;
  final String phone;
  final String local;
  final int age;
  final String photo;
  final String title;
  Person({
    required this.name,
    required this.email,
    required this.phone,
    required this.local,
    required this.age,
    required this.photo,
    required this.title,
  });

  Person copyWith({
    String? name,
    String? email,
    String? phone,
    String? local,
    int? age,
    String? photo,
    String? title,
  }) {
    return Person(
      name: name ?? this.name,
      email: email ?? this.email,
      phone: phone ?? this.phone,
      local: local ?? this.local,
      age: age ?? this.age,
      photo: photo ?? this.photo,
      title: title ?? this.title,
    );
  }
}
