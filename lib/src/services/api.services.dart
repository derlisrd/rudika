import 'package:http/http.dart' as http;
import 'package:rudika/src/config/constants.dart';
import 'dart:convert';


class ApiServices{

  

  Future<Map<String,dynamic>> loginWithEmailAndPassword({ required String email, required  String password}) async{
    try {

      http.Response res = await http.post(
        Uri.parse('${Constants.apiUrl}/auth/login'),
        body: jsonEncode({
          'email': email,
          'password': password,
        }),
        headers:{
          'Content-Type': 'application/json',
          'Accept': 'application/json',
          'x-api-key': Constants.xApiKey
        },
      );

      var json = jsonDecode(res.body);
      Map<String,dynamic> respuesta = {"success":false};
      if(json['success']){
        respuesta = {"success": json['success'], "results": json["results"]};
      }else{
        respuesta = {"success":false, "message": json["message"]};
      }
      return respuesta;
    } catch (e) {
      Map<String,dynamic> error = {"success": false, "message": e.toString()};
      return error;
    }

  }


}