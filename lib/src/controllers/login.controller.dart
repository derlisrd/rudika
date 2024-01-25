


import 'package:rudika/src/models/login.response.model.dart';
import 'package:rudika/src/services/api.services.dart';

class LoginController{



  Future <LoginResponseModel> tryLogin(String email, String password) async{
    try {
      var res = await ApiServices().loginWithEmailAndPassword(email,password);
      
      if (res.containsKey('results')) {
        ResultsModel resultado = ResultsModel(
            email: res['results']['email'], 
            id: res['results']['id'], 
            token: res['results']['token']
          );
        return LoginResponseModel(success:res.data['success'], results: resultado );
      }
      print(res?.data);
      return LoginResponseModel(success:false);
      
    } catch (  error ) {
      print(' ESTA ENTRANDO ACA LOGIN CONTROLLER');
      return LoginResponseModel(success: false); 
    }
  }

}