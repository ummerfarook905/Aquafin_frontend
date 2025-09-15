class UsersModel{
  final String name;
  final String mobile;
  final String email;
  final String dob;

  UsersModel({
    required this.name,
    required this.mobile,
    required this.email,
    required this.dob,
  });

  factory UsersModel.fromJson(Map<String, dynamic> json) {
    return UsersModel(
      name: json['name'] ?? '',
      mobile: json['mobile'] ?? '',
      email: json['email'] ?? '',
      dob: json['dob'] ?? '',
    );
  }
}