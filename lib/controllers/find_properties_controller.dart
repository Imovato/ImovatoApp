// ignore_for_file: avoid_print, unnecessary_null_comparison

import 'package:imovatoapp/mock/properties_mock.dart';
import 'package:imovatoapp/mock/user_mock.dart';

class FindPropertiesController {
  final PropertiesMock _controller = PropertiesMock();

  String _tipo = '';
  String _cidade = '';
  String _bairro = '';
  String _numQuartos = '';
  String _valor = '';
  String _finalidade = '';

  void setTipo(String tipo) {
    _tipo = tipo;
  }

  void setCidade(String cidade) {
    _cidade = cidade;
  }

  void setBairro(String bairro) {
    _bairro = bairro;
  }

  void setQuartos(String quartos) {
    _numQuartos = quartos;
  }

  void setValor(String valor) {
    _valor = valor;
  }

  void setFinalidade(String finalidade) {
    _finalidade = finalidade;
  }

  List listAllProperties() {
    return _controller.listAllProperties();
  }

  List? findProperty() {
    List test = listAllProperties()
        .where((element) =>
            element['tipo'] == _tipo &&
            element['cidade'] == _cidade &&
            element['bairro'] == _bairro &&
            element['numQuartos'] == _numQuartos &&
            element['valor'] == _valor &&
            element['finalidade'] == _finalidade)
        .toList();
    print(test);
    if (test.isNotEmpty) {
      return test;
    }
  }
}
