// ignore_for_file: avoid_print

List users = [
  {
    "id": 1,
    "nomeCompleto": 'Samuel Modesto',
    "endereco": 'rua dos bobos, 0',
    "email": 'samuelmodesto@gmail.com',
    "senha": '123456',
  },
  {
    "id": 2,
    "nomeCompleto": 'Willian Giovanni',
    "endereco": 'rua joao pedro de souza, 110',
    "email": 'willianclemente10@gmail.com',
    "senha": '123456',
  },
];

class UserMock {
  void setUser(Object user) {
    users.add(user);
    print(listUsers());
  }

  List listUsers() {
    return users;
  }

  bool login(String email, String senha) {
    List result = listUsers()
        .where(
            (element) => element["email"] == email && element["senha"] == senha)
        .toList();
    print(result);
    if (result.isNotEmpty) {
      return true;
    }
    return false;
  }
}
