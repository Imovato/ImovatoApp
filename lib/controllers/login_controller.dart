// ignore_for_file: avoid_print, unnecessary_null_comparison

import 'package:imovatoapp/mock/user_mock.dart';

class LoginController {
  final UserMock _controllerList = UserMock();

  String _email = '';
  String _senha = '';

  void setEmail(String email) {
    _email = email;
  }

  void setSenha(String senha) {
    _senha = senha;
  }

  bool login() {
    var result = _controllerList.login(_email, _senha);
    if (result) {
      return true;
    }
    return false;
  }
}
