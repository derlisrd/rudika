




class LoginResponseModel{
  bool success;
  String? message;
  ResultsLoginUserModel? results;

  LoginResponseModel({required this.success, this.message, this.results});

  Map<String,dynamic> toMap(){
    return {
      "success": success,
      "results": results,
      "message": message
    };
  }

  factory LoginResponseModel.fromMap(Map<String, dynamic> json) {
    return LoginResponseModel(
        success: json['success'] ?? false,
        results: ResultsLoginUserModel(email: json['email'], token: json['token'], id: json['id'], username: json['username']),
        message: json['message'] ?? ''
    );
  }

}


class ResultsLoginUserModel{
  String? username;
  String email;
  String token;
  int id;

  ResultsLoginUserModel({ this.username, required this.email, required this.id, required this.token});
}

