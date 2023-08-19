import 'package:meu_app_oo/enum/tipo_notificacao.dart';

abstract class Pessoa {
  //Classes abstrats não são instaciada, apenas extendidas/usadas.
  //As propriedades em dart devem ser inicializada ou indicar que recebe nulo com ? na frente do tipo
  // Em dart para encapsular com modificador private usarmos um _Propriedade
  String _nome = "";
  String _endereco = "";
  tipoNotificacao _notificacao =
      tipoNotificacao.NENHUM; //Um tipo usando enum setado como parametro

//Encapsulamento das propriedades usando metodos getters e setters.
  void setNotification(tipoNotificacao notific) {
    _notificacao = notific;
  }

  void setNome(String nome) {
    _nome = nome;
  }

  void setEndereco(String endereco) {
    _endereco = endereco;
  }

  tipoNotificacao getNotification() {
    return _notificacao;
  }

  String getNome() {
    return _nome;
  }

  String getEndereco() {
    return _endereco;
  }

  Pessoa(String nome, String endereco,
      {tipoNotificacao notificaco = tipoNotificacao.NENHUM}) {
    _nome = nome;
    _endereco = endereco;
    _notificacao = notificaco;
  }

  @override
  String toString() {
    //Apesar de usarmos um map logo abaixo, temos que transforma-lo em uma string, usando metódo toString.
    // TODO: implement toString
    return {"Nome": _nome, "Endereço": _endereco}
        .toString(); //Usamos toString para converte o map em string
  }
}
