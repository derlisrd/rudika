import 'package:flutter/material.dart';
import 'package:rudika/src/models/user.model.dart';

class AuthProvider extends ChangeNotifier {

  bool _isLoading = false;

  bool _isAuth = false;
  UserModel _user = UserModel(email: '', id: 0, token: '');

  UserModel get user => _user;

  bool get isAuth => _isAuth;

  bool get isLoading => _isLoading;


  void setIsLoading (bool valor){
    _isLoading = valor;
    notifyListeners();
  }
  void setIsAuth (bool valor){
    _isAuth = valor;
    notifyListeners();
  }

  void setUser(Map<String,dynamic> json){
    _user = UserModel.fromMap(json);
    notifyListeners();
  }

  void setUserFromModel(UserModel userProveido){
    _user = userProveido;
    notifyListeners();
  }

}