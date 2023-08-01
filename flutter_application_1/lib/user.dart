class UserInfo {
  int userId;
  String title;

  UserInfo({required this.userId, required this.title});

  factory UserInfo.fromJson(Map<String, dynamic> json) {
    return UserInfo(
      userId: json['userId'],
      title: json['title'],
    );
  }
}
