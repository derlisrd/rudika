


import 'package:rudika/src/models/login.response.model.dart';
import 'package:rudika/src/services/api.services.dart';

class LoginController{

  Future <LoginResponseModel> tryLogin(String email, String password) async{
    try {
      LoginResponseModel res = await ApiServices().login(email,password);
      print(email);
      return LoginResponseModel(success: res.success, results: res.results);
    } catch (  error ) {
      return LoginResponseModel(success: false); 
    }
  }

}