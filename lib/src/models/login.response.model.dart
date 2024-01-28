




class LoginResponseModel{
  bool success;
  String? message;
  ResultsLoginUserModel results;

  LoginResponseModel({required this.success, this.message, required this.results});

  Map<String,dynamic> toMap(){
    return {
      "success": success,
      "results": results,
      "message": message
    };
  }

 //*  ACA DEBES CAMBIAR EL MODELO *//
  factory LoginResponseModel.fromMap(Map<String, dynamic> json) {
    return LoginResponseModel(
        success: json['success'] ?? false,
        results: ResultsLoginUserModel(
          email: json['results']?['email'] ?? '', 
          token: json['results']?['token'] ?? '', 
          id: json['results']?['id'] ?? 0, 
          username: json['results']?['username'] ?? ''),
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

  factory ResultsLoginUserModel.fromJson(Map<String, dynamic> json) {
    return ResultsLoginUserModel(
        username: json['username'] ?? '',
        email : json['email'] ?? '',
        token: json['token'] ?? '',
        id: json['id'] ?? 0
      );
  }
}

