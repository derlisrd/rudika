




class LoginResponseModel{
  bool success;
  String? message;
  ResultsLoginUserModel? results;

  LoginResponseModel({required this.success, this.message, this.results});

}


class ResultsLoginUserModel{
  String? username;
  String email;
  String token;
  int id;

  ResultsLoginUserModel({ this.username, required this.email, required this.id, required this.token});
}

