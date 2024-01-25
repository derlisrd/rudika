




class LoginResponseModel{
  bool success;
  String? message;
  ResultsModel? results;

  LoginResponseModel({required this.success, this.message, this.results});

}


class ResultsModel{
  String? username;
  String email;
  String token;
  int id;

  ResultsModel({ this.username, required this.email, required this.id, required this.token});
}

