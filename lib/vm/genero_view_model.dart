import 'package:flutter/foundation.dart';
import 'package:pmfilmes/dominio/genero.dart';

class GeneroViewModel extends ChangeNotifier {
  final List<Genero> generos;

  //Genero? significa que a variavel esperar
  //receber um objeto do tipo Genero
  //mas tb aceita que o valor fique nulo
  Genero? _genero;

  GeneroViewModel({
    required this.generos,
  });

  void selecionaGenero(Genero genero) {
    _genero = genero;
    notifyListeners();
  }

  bool get jaSelecionouGenero => _genero != null;
  //genero! força a plataforma a aceitar
  // que a variavel está preenchida
  //tipo: Confia que vai ter valor!
  Genero get generoSelecionado => _genero!;
}
