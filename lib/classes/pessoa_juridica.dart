import 'package:meu_app_oo/classes/pessoa_abstract.dart';
import 'package:meu_app_oo/enum/tipo_notificacao.dart';

class PessoaJuridica extends Pessoa {
  String _cnpj = "";

  void setCnpj(String cnpj) {
    _cnpj = cnpj;
  }

  String getCnpj() {
    return _cnpj;
  }

  PessoaJuridica(String cnpj, String nome, String endereco,
      {tipoNotificacao notification = tipoNotificacao.NENHUM})
      : super(nome, endereco, notificaco: notification) {
    _cnpj = cnpj;
  }

  @override
  String toString() {
    // TODO: implement toString
    return {
      "Nome": getNome(),
      "Endereco": getEndereco(),
      "CNPJ": getCnpj(),
      "Notificação": getNotification()
    }.toString();
  }
}
