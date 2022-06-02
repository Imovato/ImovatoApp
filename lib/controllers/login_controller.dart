class LoginController {
  String _email = '';
  String _senha = '';

  void setEmail(String email) {
    _email = email;
  }

  void setSenha(String senha) {
    _senha = senha;
  }

  void login() {
    print(_email);
    print(_senha);
  }
}
