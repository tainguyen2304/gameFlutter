class Usera {
  String email;
  String name;
  String avatar;
  String age;
  String id;
  int score;
  int level;

  Usera(
      {required this.score,
      required this.level,
      required this.id,
      required this.email,
      required this.name,
      required this.avatar,
      required this.age});
  Map<String, dynamic> toJson() => {
        'Level': level,
        'score': score,
        'id': id,
        'email': email,
        'name': name,
        'avatar': avatar,
        'age': age,
      };
}
