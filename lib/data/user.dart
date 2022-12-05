class Usera {
  final String id;
  final String name;
  final String avatar;
  final String age;
  Usera(
      {this.id = '',
      required this.name,
      required this.avatar,
      required this.age});
  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'avatar': avatar,
        'age': age,
      };
}
