import 'repositories/repository-impl.dart';
import 'repositories/repository.dart';
import 'services/aluno-service.dart';
import 'models/aluno.dart';
import 'services/grupo-service.dart';
import 'models/grupo.dart';

main() {
  //------------------------Aluno------------------------------
  Repository<Aluno, int> repositoryAluno = new RepositoryImpl();
  AlunoService alunoService = new AlunoService(repositoryAluno);

  Aluno alunoA = new Aluno();
  Aluno alunoB = new Aluno();

  //Cadastro Aluno A
  alunoA.id = 1;
  alunoA.nome = 'Nome - Revan';
  alunoA.cpf = 'CPF - 99999999999-99';
  alunoA.cidade = 'Cidade - Curitiba';
  alunoA.email = 'Email - revan@gmail.com';

  alunoService.cadastrar(alunoA);

  //Cadastro Aluno B
  alunoB.id = 2;
  alunoB.nome = 'Nome - Renato';
  alunoB.cpf = 'CPF - 0000000000-99';
  alunoB.cidade = 'Cidade - Curitiba';
  alunoB.email = 'Email - renato@hotmail.com';

  alunoService.cadastrar(alunoB);
  //print(aluno);

  //Lista de alunos cadastrados
  print("<=============>Lista de Alunos<=============>");
  alunoService.buscarTodos().forEach((element) {
    print(element);
  });

  //------------------------Grupo------------------------------
  Repository<Grupo, int> repositoryGrupo = new RepositoryImpl();
  GrupoService grupoService = new GrupoService(repositoryGrupo);

  //2 Cadastros para cinto
  Grupo grupoA = new Grupo();
  Grupo grupoB = new Grupo();

  //Grupo de cintos A
  grupoA.id = 1;
  grupoA.cinto = 'Cinto - Azul';
  grupoA.item = ['Azul - A', 'Azul - B', 'Azul - C'];

  grupoService.cadastrar(grupoA);

  //Cadastrar Grupo B
  grupoB.id = 02;
  grupoB.cinto = 'Cinto - Amarelo';
  grupoB.item = ['Amarelo - A', 'Amarelo - B', 'Amarelo - C'];

  grupoService.cadastrar(grupoB);

  print("<=============>Lista de Cintos<=============>");
  grupoService.buscarTodos().forEach((element) {
    print(element);
  });
}
