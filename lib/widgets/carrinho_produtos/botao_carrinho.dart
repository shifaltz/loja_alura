import 'package:ecomerce/main.dart';
import 'package:ecomerce/widgets/carrinho_produtos/indicador_carrinho.dart';
import 'package:flutter/material.dart';

class BotaoCarrinho extends StatefulWidget {
  @override
  _BotaoCarrinhoState createState() => _BotaoCarrinhoState();
}

class _BotaoCarrinhoState extends State<BotaoCarrinho> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(100),
            bottomLeft: Radius.circular(100),
          ),
        ),
        alignment: Alignment.centerRight,
        height: 40,
        padding: EdgeInsets.only(
          right: 20,
          left: 20,
        ),
        child: _visibilidadeIndicadorCarrinho(),
      ),
      onTap: (){
        Navigator.of(context).pushNamed('/carrinho').then((value) => setState((){}));
      },
    );
  }

  _visibilidadeIndicadorCarrinho(){
    if(Home.itensCarrinho.length > 0){
      return Stack(
        children: [
          Image(
            height: 30,
            image: AssetImage('assets/icons/carrinho.png'),
          ),
          IndicadorCarrinho(Home.itensCarrinho.length),
        ],
      );
    }
    return Image(
      height: 30,
      image: AssetImage('assets/icons/carrinho.png'),
    );
  }
}
