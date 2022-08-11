// ignore_for_file: unused_field, prefer_final_fields, camel_case_types

import 'dart:convert';

import 'package:imovatoapp/mock/user_mock.dart';
import 'package:dio/dio.dart';
import 'package:http/http.dart' as http;

class SignUpController {
  final UserMock _controller = UserMock();

  String _nomeCompleto = '';
  String _cpf = '';
  String _telefone = '';
  String _endereco = '';
  String _email = '';
  String _senha = '';

  void setCpf(String cpf) {
    _cpf = cpf;
  }

  void setTelefone(String telefone) {
    _telefone = telefone;
  }

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

  // void userCreate() async {
  //   print('entrou aq');

  //   final url = 'http://192.168.1.105:8081/crudService/api/user/customer/add';

  //   final data = {
  //     "name": _nomeCompleto,
  //     "cpf": _cpf,
  //     "address": _endereco,
  //     "phone": _telefone,
  //     "email": _email,
  //     "password": _senha,
  //   };

  //   final dio = Dio();
  //   Response response;

  //   response = await dio.post(
  //     url,
  //     data: data,
  //     options: Options(
  //       headers: <String, String>{
  //         'Content-Type': 'application/json; charset=UTF-8',
  //       },
  //     ),
  //   );
  //   print('Status Code: ${response.statusCode}');
  //   print('Body: ${response.data}');
  // }

  void userCreate() async {
    print('entrou aq');

    final url = Uri.parse(
        'http://192.168.1.105:8081/crudService/api/user/customer/add');
    var response = await http.post(
      url,
      body: jsonEncode(<String, String>{
        "name": _nomeCompleto,
        "cpf": _cpf,
        "address": _endereco,
        "phone": _telefone,
        "email": _email,
        "password": _senha,
      }),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
    );
    print(response.body);

    if (response.statusCode == 200) {
      // return response.body;
    } else {
      throw Exception('Failed to create user.');
    }
  }

  List listAllUsers() {
    return _controller.listUsers();
  }
}
