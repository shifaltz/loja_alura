import 'package:ecomerce/models/item_carrinho.dart';
import 'package:ecomerce/screens/carrinho.dart';
import 'package:ecomerce/screens/detalhes.dart';
import 'package:ecomerce/widgets/appbar_custom.dart';
import 'package:ecomerce/widgets/grid_produtos/grid_produtos.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/carrinho': (context) => Carrinho(),
        '/detalhes': (context) => Detalhes(),
      },
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
          textTheme: TextTheme(
            headline1: TextStyle(
              fontSize: 20,
              fontFamily: 'Alata',
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
            headline2: TextStyle(
              fontSize: 20,
              fontFamily: 'Alata',
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
            headline3: TextStyle(
              fontSize: 16,
              fontFamily: 'Alata',
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
            headline4: TextStyle(
              fontSize: 16,
              fontFamily: 'Alata',
              fontWeight: FontWeight.w200,
              color: Colors.black,
            ),
          )),
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {

  static List<ItemCarrinho> itensCarrinho = [];

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final List moveis = [
    {
      "titulo": "Mesa",
      "preco": 300,
      "foto": "movel1.jpeg",
      "descricao":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean aliquam libero id mauris mollis convallis. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus."
    },
    {
      "titulo": "Cadeira",
      "preco": 120,
      "foto": "movel2.jpg",
      "descricao":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean aliquam libero id mauris mollis convallis. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus."
    },
    {
      "titulo": "Manta",
      "preco": 200,
      "foto": "movel3.jpg",
      "descricao":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean aliquam libero id mauris mollis convallis. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus."
    },
    {
      "titulo": "Sofá Cinza",
      "preco": 800,
      "foto": "movel4.jpg",
      "descricao":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean aliquam libero id mauris mollis convallis. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus."
    },
    {
      "titulo": "Mesa de cabeceira",
      "preco": 400,
      "foto": "movel5.jpg",
      "descricao":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean aliquam libero id mauris mollis convallis. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus."
    },
    {
      "titulo": "Jogo de Cama",
      "preco": 250,
      "foto": "movel6.jpg",
      "descricao":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean aliquam libero id mauris mollis convallis. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus."
    },
    {
      "titulo": "Sofá Branco",
      "preco": 900,
      "foto": "movel7.jpg",
      "descricao":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean aliquam libero id mauris mollis convallis. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus."
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBarCustom(titulo: 'Loja Alura', carrinho: false),
      body: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Container(
                  margin:
                      EdgeInsets.only(left: 30, right: 20, top: 10, bottom: 10),
                  child: Divider(),
                ),
              ),
              Text('Produtos'),
              Expanded(
                child: Container(
                  margin:
                      EdgeInsets.only(left: 30, right: 20, top: 10, bottom: 10),
                  child: Divider(),
                ),
              ),
            ],
          ),
          Flexible(
            child: GridProdutos(
              atualiza: atualiza,
              moveis: moveis,
            ),
          ),
        ],
      ),
    );
  }

  void atualiza(){
    setState(() {

    });
  }

}
