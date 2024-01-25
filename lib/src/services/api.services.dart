import 'package:dio/dio.dart';
import 'package:rudika/src/config/constants.dart';
import 'package:rudika/src/models/login.response.model.dart';

class ApiServices{

  Future<LoginResponseModel> login(String email, String password) async{
    try {
      var res = await Dio().post('${Constants.apiUrl}/auth/login',
      queryParameters:{
        "email": email,
        "password": password
      }, options: Options(
        headers: {
            "Content-Type":"application/json",
            "x-api-key": Constants.xApiKey
          }
        )
      );
      if(res.statusCode == 200){

        return LoginResponseModel(success: res.data["success"], results: res.data["results"]);
      }else{
        return LoginResponseModel(success: false);
      }

    } catch (  error ) {
      return LoginResponseModel(success: false);
    }

  }


}