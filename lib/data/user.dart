class Usera {
  final String email;
  final String name;
  final String avatar;
  final String age;
  Usera(
      {required this.email ,
      required this.name,
      required this.avatar,
      required this.age});
  Map<String, dynamic> toJson() => {
        'email': email,
        'name': name,
        'avatar': avatar,
        'age': age,
      };
}
