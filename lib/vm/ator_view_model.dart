import 'package:flutter/foundation.dart';
import 'package:pmfilmes/dominio/ator.dart';

class AtorViewModel extends ChangeNotifier {
  final List<Ator> atores;

  //Genero? significa que a variavel esperar
  //receber um objeto do tipo Genero
  //mas tb aceita que o valor fique nulo
  Ator? _ator;

  AtorViewModel({
    required this.atores,
  });

  void selecionaAtor(Ator ator) {
    _ator = ator;
    notifyListeners();
  }

  bool get jaSelecionouAtor => _ator != null;
  //genero! força a plataforma a aceitar
  // que a variavel está preenchida
  //tipo: Confia que vai ter valor!
  Ator get atorSelecionado => _ator!;
}
