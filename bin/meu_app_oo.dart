import 'package:meu_app_oo/classes/pessoa_fisica.dart';
import 'package:meu_app_oo/classes/pessoa_juridica.dart';
import 'package:meu_app_oo/enum/tipo_notificacao.dart';

void main(List<String> arguments) {
//Classe em dart mesmo estando vazia ela pode ser instanciada:

  var pessoaFisica =
      new PessoaFisica("443276025", "nome", "endereco", tipoNotificacao.EMAIL);
  print(pessoaFisica);
//Em dart a palavra reservada new não é obrigatória para instaciar uma classe.
  var pessoaJuridica = new PessoaJuridica("44300276025", "nome", "endereco",
      notification: tipoNotificacao.SMS);
  print(pessoaJuridica);
}
