// ignore_for_file: avoid_print, unnecessary_null_comparison, body_might_complete_normally_nullable

import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:imovatoapp/model/properties_model.dart';

class FindPropertiesController {
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

  String _area = '';
  String _name = '';
  String _neighborhood = '';
  String _codAddress = '';
  String _city = '';
  String _description = '';
  String _address = '';
  String _state = '';
  String _price = '';
  String _number = '';
  String _block = '';
  String _rooms = '';
  String _amount = '';
  List images = [];

  void setArea(String area) {
    _area = area;
  }

  void setName(String name) {
    _name = name;
  }

  void setNeighborhood(String neighborhood) {
    _neighborhood = neighborhood;
  }

  void setCodAddress(String codAddress) {
    _codAddress = codAddress;
  }

  void setCity(String city) {
    _city = city;
  }

  void setDescription(String description) {
    _description = description;
  }

  void setAddress(String address) {
    _address = address;
  }

  void setState(String state) {
    _state = state;
  }

  void setPrice(String price) {
    _price = price;
  }

  void setNumber(String number) {
    _number = number;
  }

  void setBlock(String block) {
    _block = block;
  }

  void setRooms(String rooms) {
    _rooms = rooms;
  }

  void setAmount(String amount) {
    _amount = amount;
  }

  void createApartement() async {
    final url = Uri.parse(
        'http://10.2.171.175:8081/crudService/api/property/apartment');

    var response = await http.post(
      url,
      body: jsonEncode({
        'area': _area,
        'name': _name,
        'neighborhood': _neighborhood,
        'codAddress': _codAddress,
        'city': _city,
        'description': _description,
        'adress': _address,
        'state': _state,
        'price': _price,
        'number': _number,
        'block': _block,
        'rooms': _rooms,
        'amount': _amount,
      }),
      headers: {
        'Content-Type': 'application/json; charset=UTF-8',
      },
    );

    if (response.statusCode == 200) {
      // return response;
    } else {
      throw Exception('Failed to create property.');
    }
  }

  void createGround() async {
    final url =
        Uri.parse('http://10.2.171.175:8081/crudService/api/property/ground');

    var response = await http.post(
      url,
      body: jsonEncode({
        'area': _area,
        'name': _name,
        'neighborhood': _neighborhood,
        'codAddress': _codAddress,
        'city': _city,
        'description': _description,
        'adress': _address,
        'state': _state,
        'price': _price,
        'number': _number,
        'block': _block,
        // 'rooms': null,
        'amount': _amount,
      }),
      headers: {
        'Content-Type': 'application/json; charset=UTF-8',
      },
    );

    if (response.statusCode == 200) {
      // return response;
    } else {
      throw Exception('Failed to create property.');
    }
  }

  void createHouse() async {
    final url =
        Uri.parse('http://10.2.171.175:8081/crudService/api/property/house');

    var response = await http.post(
      url,
      body: jsonEncode({
        'area': _area,
        'name': _name,
        'neighborhood': _neighborhood,
        'codAddress': _codAddress,
        'city': _city,
        'description': _description,
        'adress': _address,
        'state': _state,
        'price': _price,
        'number': _number,
        // 'block': null,
        'rooms': _rooms,
        'amount': _amount,
      }),
      headers: {
        'Content-Type': 'application/json; charset=UTF-8',
      },
    );

    if (response.statusCode == 200) {
      // return response;
    } else {
      throw Exception('Failed to create property.');
    }
  }

  List<Properties> properties = [];

  Future<List<Properties>> listAllApartments() async {
    //10.2.171.175 = ip unipampa
    final url = Uri.parse(
        'http://10.2.171.175:8081/crudService/api/property/apartment/all');

    var response = await http.get(
      url,
      headers: {
        "content-type": "application/json",
      },
    );
    var json = jsonDecode(response.body);

    if (response.statusCode == 200) {
      List<dynamic> body = jsonDecode(response.body);

      properties = body
          .map(
            (dynamic item) => Properties.fromJson(item),
          )
          .toList();

      return properties;
    } else {
      throw "Unable to retrieve properties.";
    }
  }

  Future<List<Properties>> listAllHouses() async {
    final url = Uri.parse(
        'http://10.2.171.175:8081/crudService/api/property/house/all');

    var response = await http.get(
      url,
      headers: {
        "content-type": "application/json",
      },
    );
    var json = jsonDecode(response.body);

    if (response.statusCode == 200) {
      List<dynamic> body = jsonDecode(response.body);

      properties = body
          .map(
            (dynamic item) => Properties.fromJson(item),
          )
          .toList();

      return properties;
    } else {
      throw "Unable to retrieve properties.";
    }
  }

  Future<List<Properties>> listAllGrounds() async {
    final url = Uri.parse(
        'http://10.2.171.175:8081/crudService/api/property/ground/all');

    var response = await http.get(
      url,
      headers: {
        "content-type": "application/json",
      },
    );
    var json = jsonDecode(response.body);

    if (response.statusCode == 200) {
      List<dynamic> body = jsonDecode(response.body);

      properties = body
          .map(
            (dynamic item) => Properties.fromJson(item),
          )
          .toList();

      return properties;
    } else {
      throw "Unable to retrieve properties.";
    }
  }

  Future<List<Properties>> listAllPropertiesApi() async {
    final url = Uri.parse(
        'http://10.2.171.175:8081/crudService/api/property/property/all');

    var response = await http.get(
      url,
      headers: {
        "content-type": "application/json",
      },
    );
    var json = jsonDecode(response.body);

    if (response.statusCode == 200) {
      List<dynamic> body = jsonDecode(response.body);

      properties = body
          .map(
            (dynamic item) => Properties.fromJson(item),
          )
          .toList();

      return properties;
    } else {
      throw "Unable to retrieve properties.";
    }
  }
}
