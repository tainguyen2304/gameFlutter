import 'dart:ffi';


class Usera {
  String email;
  String name;
  String avatar;
  String age;
  String id;
  int score;
  int Level;

  Usera(
      {required this.score,
      required this.Level,
        required this.id,
      required this.email,
      required this.name,
      required this.avatar,
      required this.age});
  Map<String, dynamic> toJson() => {
        'Level':Level,
        'score':score,
        'id': id,
        'email': email,
        'name': name,
        'avatar': avatar,
        'age': age,
      };
}
