class UserEntity{
  String? username;
  String email;
  String token;
  int id;

  UserEntity({ this.username, required this.email, required this.id, required this.token});

  Map<String, dynamic> toJson(){
    return {
      'id': id,
      'email': email,
      'token': token,
      'username': username
    };
  }

  static UserEntity fromJson(Map<String, dynamic> json){

    return UserEntity(
      email: json['email'], 
      id: json['id'], 
      token: json['token'],
      username: json['username'] ?? ''
      );

  }

}