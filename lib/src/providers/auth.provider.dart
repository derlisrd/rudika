import 'package:flutter/material.dart';
import 'package:rudika/src/models/user.model.dart';

class AuthProvider extends ChangeNotifier {

  UserModel _user = UserModel(email: '', id: 0, token: '');

  UserModel get user => _user;

  void setUser(String user){
    _user = UserModel.fromJson(user);
    notifyListeners();
  }

  void setUserFromModel(UserModel userProveido){
    _user = userProveido;
    notifyListeners();
  }

}