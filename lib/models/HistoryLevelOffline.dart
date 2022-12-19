class OfflineUserHistory {
  final String level;
  final String id;
  final String topic;
  final String userEmail;

  OfflineUserHistory({
    required this.level,
    required this.id,
    required this.topic,
    required this.userEmail,
  });
  Map<String, dynamic> toJson() => {
        'level': level,
        'id': id,
        'topic': topic,
        'userEmail': userEmail,
      };
}
