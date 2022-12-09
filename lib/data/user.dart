class Usera {
   String email;
   String name;
   String avatar;
   String age;
    String id;
  Usera(
      {required this.id,
      required this.email,
      required this.name,
      required this.avatar,
      required this.age});
  Map<String, dynamic> toJson() => {
        'id':id,
        'email': email,
        'name': name,
        'avatar': avatar,
        'age': age,
      };
}
