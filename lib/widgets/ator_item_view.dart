import 'package:flutter/material.dart';
import 'package:pmfilmes/dominio/ator.dart';
import 'package:pmfilmes/vm/ator_view_model.dart';
import 'package:provider/provider.dart';

class AtorItemView extends StatelessWidget {
  final Ator ator;

  const AtorItemView({super.key, required this.ator});

  @override
  Widget build(BuildContext context) {
    final vm = Provider.of<AtorViewModel>(context);

    return Container(
      padding: const EdgeInsets.all(4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(ator.nome),
          IconButton(
            onPressed: () => click(context),
            icon: Icon(
              Icons.task_alt,
              color: vm.jaSelecionouAtor && vm.atorSelecionado.id == ator.id
                  ? Colors.green
                  : Colors.black,
            ),
          ),
        ],
      ),
    );
  }

  void click(BuildContext context) {
    final vm = Provider.of<AtorViewModel>(context, listen: false);
    vm.selecionaAtor(ator);

    Navigator.pop(context);
  }
}
