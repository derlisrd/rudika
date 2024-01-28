import 'package:http/http.dart' as http;
import 'package:rudika/src/config/constants.dart';
import 'package:rudika/src/models/login.response.model.dart';
import 'dart:convert';

import 'package:rudika/src/models/register.response.model.dart';


class ApiServices{

  

  Future<LoginResponseModel> loginWithEmailAndPassword({ required String email, required  String password}) async{
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
      //print(res.body);
      Map<String,dynamic> json = jsonDecode(res.body);
       LoginResponseModel loginResponse = LoginResponseModel.fromMap(json);
       return loginResponse;
    } catch (e) {
      Map<String,dynamic> error = {"success": false, "message": e.toString()};
      LoginResponseModel loginResponseError = LoginResponseModel.fromMap(error);
      return loginResponseError;
    }

  }

  Future<RegisterModelResponse> registerWithEmailAndPassword({ required String email, required  String password, required String name, required String passwordConfirmation}) async{
    try {

      http.Response res = await http.post(
        Uri.parse('${Constants.apiUrl}/auth/register'),
        body: jsonEncode({
          'email': email,
          'name': name,
          'password': password,
          'password_confirmation': passwordConfirmation
        }),
        headers:{
          'Content-Type': 'application/json',
          'Accept': 'application/json',
          'x-api-key': Constants.xApiKey
        },
      );

      Map<String,dynamic> json = jsonDecode(res.body);

      RegisterModelResponse registerResponse = RegisterModelResponse.fromJson(json);
      return registerResponse;
      
    } catch (e) {
      Map<String,dynamic> error = {"success": false, "message": e.toString()};
      RegisterModelResponse registerResponseError = RegisterModelResponse.fromJson(error);
      return registerResponseError;
    }

  }


}