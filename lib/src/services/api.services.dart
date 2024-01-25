import 'package:dio/dio.dart';
import 'package:rudika/src/config/constants.dart';


class ApiServices{

  

  Future<dynamic> loginWithEmailAndPassword(String email, String password) async{
    try {
      var res = await Dio().post('${Constants.apiUrl}/auth/login',
      queryParameters:{
        "email": email,
        "password": password
      }, options: Options(
        headers: {
            'Content-Type': 'application/json',
            'Accept': 'application/json',
            "x-api-key": Constants.xApiKey
          }
        )
      );
      if (res.statusCode == 200) {
        return res.data;
      } else{
        print(res.data);
        return res;
      }
    } catch (  e ) {
      print('Error api services');
      return null;
    }

  }


}