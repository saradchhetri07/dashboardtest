enum AppEnvironment { development, production }

class EnvironmentModel {
  EnvironmentModel(
      {this.uuid,
      this.name,
      this.username,
      this.profileImage,
      this.coverImage,
      this.bio,
      this.email,
      this.phoneNumber,
      this.token,
      this.role,
      this.oneSignalId,
      this.baseUrl});

  String? uuid;
  String? name;
  String? username;
  String? profileImage;
  dynamic coverImage;
  dynamic bio;
  String? email;
  String? phoneNumber;
  String? token;
  String? role;
  String? oneSignalId;
  String? baseUrl;

  factory EnvironmentModel.fromJson(Map<String, dynamic> json) =>
      EnvironmentModel(
          uuid: json["uuid"],
          name: json["name"],
          username: json["username"],
          profileImage: json["profileImage"],
          coverImage: json["coverImage"],
          bio: json["bio"],
          email: json["email"],
          phoneNumber: json["phoneNumber"] == null
              ? null
              : json["phoneNumber"].toString(),
          token: json["token"],
          role: json["role"]);
  @override
  String toString() {
    return 'name : ${this.name} | token: ${this.token}';
  }
}
