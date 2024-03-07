import 'package:pmfilmes/dominio/ator.dart';

class AtorRepositorio {
  static List<Ator> list() {
    return <Ator>[
      Ator(id: "aid", nome: "Jenna Ortega", nacionalidade: "Norte-Americano"),
      Ator(id: "bid", nome: "Tyler Posey", nacionalidade: "Norte-Americano"),
      Ator(
          id: "cid", nome: "Ian Somerhalder", nacionalidade: "Norte-Americano"),
      Ator(id: "did", nome: "Tom Holland", nacionalidade: "Britânico"),
      Ator(id: "eid", nome: "Jensen Ackles", nacionalidade: "Norte-Americano"),
      Ator(id: "fid", nome: "Misha Collins", nacionalidade: "Norte-Americano"),
    ];
  }
}
