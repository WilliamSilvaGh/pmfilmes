import 'package:pmfilmes/dominio/genero.dart';

class GeneroRepositorio {
  static List<Genero> list() {
    return <Genero>[
      Genero(id: "a1", nome: "Terror"),
      Genero(id: "a2", nome: "Suspense"),
      Genero(id: "a3", nome: "Drama"),
      Genero(id: "a4", nome: "Comédia"),
      Genero(id: "a5", nome: "Romance"),
      Genero(id: "a6", nome: "Documentário"),
    ];
  }
}
