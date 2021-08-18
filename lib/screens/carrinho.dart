import 'package:ecomerce/main.dart';
import 'package:ecomerce/widgets/appbar_custom.dart';
import 'package:ecomerce/widgets/carrinho_produtos/lista_carrinho.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Carrinho extends StatefulWidget {
  @override
  _CarrinhoState createState() => _CarrinhoState();
}

class _CarrinhoState extends State<Carrinho> {

  final formatacaoReais = NumberFormat.currency(locale: 'pt_br', symbol: 'R\$');

  @override
  Widget build(BuildContext context) {
    int valorTotal = _calcularTotal();
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBarCustom(
        titulo: 'Carrinho',
        carrinho: true,
      ),
      body: _contruirTela(),
      bottomNavigationBar: Container(
        color: Colors.white,
        height: 80,
        padding: EdgeInsets.all(20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Total', style: Theme.of(context).textTheme.headline1,),
            Text(formatacaoReais.format(valorTotal), style: Theme.of(context).textTheme.headline4,),
          ],
        ),
      ),
    );
  }

  Widget _contruirTela(){
    if(Home.itensCarrinho.isNotEmpty){
      return ListaCarrinho(
        atualiza: atualiza,
      );
    }else{
      return Center(child: Text('Seu carrinho está vazio =/'));
    }
  }

  void atualiza() {
    setState(() {});
  }

  int _calcularTotal() {
    if (Home.itensCarrinho.isNotEmpty) {
      return Home.itensCarrinho
          .map((item) => item.movel.preco * item.quantidade)
          .reduce((precoAtual, precoNovo) => precoAtual + precoNovo);
    }
    return 0;
  }
}
