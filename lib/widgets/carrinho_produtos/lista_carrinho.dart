import 'package:ecomerce/main.dart';
import 'package:ecomerce/models/item_carrinho.dart';
import 'package:ecomerce/models/movel.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ListaCarrinho extends StatefulWidget {

  final Function atualiza;

  ListaCarrinho({this.atualiza});

  @override
  _ListaCarrinhoState createState() => _ListaCarrinhoState();

}

class _ListaCarrinhoState extends State<ListaCarrinho> {

  final List<ItemCarrinho> itemCarrinho = Home.itensCarrinho;
  final formatacaoReais = NumberFormat.currency(locale: 'pt_br', symbol: 'R\$');

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: itemCarrinho.length,
      itemBuilder: (context, index) {
        ItemCarrinho item = itemCarrinho[index];
        Movel movel = item.movel;

        return Container(
          margin: EdgeInsets.all(16),
          child: Card(
            clipBehavior: Clip.hardEdge,
            child: Row(
              children: [
                Expanded(
                  child: Image(
                    image: AssetImage('assets/images/${movel.foto}'),
                    height: 100,
                    fit: BoxFit.cover,
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 100,
                    margin: EdgeInsets.only(left: 10, right: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(movel.titulo,style: Theme.of(context).textTheme.headline3,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(formatacaoReais.format(movel.preco)),
                            Row(
                              children: [
                                GestureDetector(
                                  onTap: (){
                                    _diminuirQuantidade(item);
                                  },
                                  child: Container(
                                    margin: EdgeInsets.all(8),
                                    child: Icon(
                                      Icons.remove,
                                      size: 24,
                                    ),
                                  ),
                                ),
                                Text(item.quantidade.toString()),
                                GestureDetector(
                                  onTap: (){
                                    _aumentarQuantidade(item);
                                  },
                                  child: Container(
                                    margin: EdgeInsets.all(8),
                                    child: Icon(
                                      Icons.add,
                                      size: 24,
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  void _aumentarQuantidade(ItemCarrinho itemCarrinho){
    if(itemCarrinho.quantidade < 99){
      setState(() {
        itemCarrinho.quantidade++;
        widget.atualiza();
      });
    }else{

    }

  }

  void _diminuirQuantidade(ItemCarrinho itemCarrinho){
    if(itemCarrinho.quantidade > 1){
      setState(() {
        itemCarrinho.quantidade--;
        widget.atualiza();
      });
    }else{
      _removerMovel(itemCarrinho);
    }
  }

  void _removerMovel(ItemCarrinho itemCarrinho){
    setState(() {
      Home.itensCarrinho.remove(itemCarrinho);
      widget.atualiza();
    });
  }
}
