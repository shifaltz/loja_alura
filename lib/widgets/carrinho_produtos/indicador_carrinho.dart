import 'package:flutter/material.dart';

class IndicadorCarrinho extends StatelessWidget {
  final int tamanhoLista;

  IndicadorCarrinho(this.tamanhoLista);

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.bottomRight,
        height: 16,
        width: 16,
        decoration:
            BoxDecoration(color: Colors.deepPurple, shape: BoxShape.circle),
        child: Center(
          child: Text(tamanhoLista.toString(),
          style: TextStyle(color: Colors.white)),
        ));
  }
}
