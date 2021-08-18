import 'package:flutter/material.dart';

class ImagemProdutoGrid extends StatelessWidget {
  final String imagem;

  ImagemProdutoGrid({this.imagem});

  @override
  Widget build(BuildContext context) {
    return Positioned.fill(
        child: Image(
      image: AssetImage('assets/images/$imagem'),
      fit: BoxFit.cover,
    ));
  }
}
