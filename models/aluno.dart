class Aluno {
  int id;
  String nome;
  String cpf;
  String cidade;
  String email;

  Aluno() {}
  Aluno.p(String nome, String cpf, String cidade, String email) {
    this.nome = nome;
    this.cpf = cpf;
    this.cidade = cidade;
    this.email = email;
  }

  @override
  String toString() {
    return "$nome $cpf $cidade $email";
  }
}
