import 'tipo_de_aceleracao_model.dart';

class CarModel {
  String model;
  String marca;
  TipoDeAceleracaoModel tipoDeAceleracao;
  String cor;
  int qtdDePortas;

  CarModel({
    required this.cor,
    required this.marca,
    required this.qtdDePortas,
    required this.tipoDeAceleracao,
    required this.model,
  });

  int _velocidade = 0;

  int get pegarVelocidade {
    return _velocidade;
  }

  set novoValorVelocidade(int velocidade) {
    if (velocidade < 50) {
      _velocidade = velocidade;
    }
  }

  void acelerador() {
    _alterarVelocidade(tipoDeAceleracao.qtdDeAumentoDeKm);
  }

  void freio() {
    _alterarVelocidade(-10);
  }

  void _alterarVelocidade(int valorParaAlterar) {
    _velocidade += valorParaAlterar;
  }
}
