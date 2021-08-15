class Users {
  final String emailId;
  final String firstName;
  final String avatar;
  Users({
    required this.emailId,
    required this.firstName,
    required this.avatar,
  });

  factory Users.fromJson(Map<String, dynamic> json) {
    return Users(
      emailId: json['email'],
      firstName: json['first_name'],
      avatar: json['avatar'],
    );
  }
}
