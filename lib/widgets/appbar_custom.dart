import 'package:ecomerce/widgets/carrinho_produtos/botao_carrinho.dart';
import 'package:flutter/material.dart';

class AppBarCustom extends StatelessWidget with PreferredSizeWidget {

  final String titulo;
  final bool carrinho;

  AppBarCustom({this.titulo, this.carrinho});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      iconTheme: IconThemeData(
        color: Colors.black
      ),
      title: Text(titulo, style: TextStyle(color: Colors.black),),
      backgroundColor: Colors.transparent,
      elevation: 0.0,
      centerTitle: true,
      actions: [
        _verificarPagina(carrinho),
      ],
    );
  }

  _verificarPagina(bool carrinho){
    if(carrinho){
      return Container();
    }else{
      return BotaoCarrinho();
    }
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
