// ignore_for_file: unused_field, prefer_final_fields, camel_case_types

import 'package:imovatoapp/mock/user_mock.dart';

class SignUpController {
  final UserMock _controller = UserMock();

  String _nomeCompleto = '';
  String _endereco = '';
  String _email = '';
  String _senha = '';

  void setNomeCompleto(String nomeCompleto) {
    _nomeCompleto = nomeCompleto;
  }

  void setEndereco(String endereco) {
    _endereco = endereco;
  }

  void setEmail(String email) {
    _email = email;
  }

  void setSenha(String senha) {
    _senha = senha;
  }

  String createUser() {
    _controller.setUser({
      'id': listAllUsers().length + 1,
      'nomeCompleto': _nomeCompleto,
      'endereco': _endereco,
      'email': _email,
      'senha': _senha,
    });
    return 'usuário criado';
  }

  List listAllUsers() {
    return _controller.listUsers();
  }
}
