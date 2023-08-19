import 'package:meu_app_oo/classes/pessoa_abstract.dart';
import 'package:meu_app_oo/enum/tipo_notificacao.dart';

class PessoaFisica extends Pessoa {
  String _cpf = "";

  void setCpf(String cpf) {
    _cpf = cpf;
  }

  String getCpf() {
    return _cpf;
  }

  PessoaFisica(
      String cpf, String nome, String endereco, tipoNotificacao notification)
      : super(nome, endereco, notificaco: notification) {
    _cpf = cpf;
  }

  @override
  String toString() {
    // TODO: implement toString
    return {
      "Nome": getNome(),
      "Endereço": getEndereco(),
      "CPF": getCpf(),
      "Notificação": getNotification()
    }.toString();
  }
}
