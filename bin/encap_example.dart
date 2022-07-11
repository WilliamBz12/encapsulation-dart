import 'models/car_model.dart';
import 'models/tipo_de_aceleracao_model.dart';

void main() {
  TipoDeAceleracaoModel aceleracaoFerrari = TipoDeAceleracaoModel(
    qtdDeAumentoDeKm: 50,
    name: "Aceleração ferrari",
  );

  TipoDeAceleracaoModel aceleracaoPrisma = TipoDeAceleracaoModel(
    qtdDeAumentoDeKm: 10,
    name: "Aceleração prisma",
  );

  CarModel prisma = CarModel(
    cor: "BRANCO",
    marca: "Chevrolet",
    qtdDePortas: 4,
    tipoDeAceleracao: aceleracaoPrisma,
    model: "Prisma",
  );

  prisma.acelerador();
  prisma.acelerador();
  prisma.acelerador();

  print("PRISMA VELOCIDADE: ${prisma.pegarVelocidade}");

  //print("PRISMA VELOCIDADE: ${prisma.velocidade}");

  CarModel ferrari = CarModel(
    cor: "VERMELHO",
    marca: "ferrari",
    qtdDePortas: 2,
    tipoDeAceleracao: aceleracaoFerrari,
    model: "v8",
  );

  ferrari.acelerador();

  print("FERRARI VELOCIDADE: ${ferrari.pegarVelocidade}");
}
