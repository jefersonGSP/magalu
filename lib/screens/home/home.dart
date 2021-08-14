import 'package:flutter/material.dart';
import 'package:magalu/models/itens.dart';
import 'package:magalu/provider/listOfItens.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        bottom: PreferredSize(
            child: Image.asset("assets/images/linha.jpg"),
            preferredSize: Size.fromHeight(5)),
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset(
            "assets/images/logo.jpg",
            width: 10,
            height: 10,
          ),
        ),
        title: Text(
          "Ofertas do dia",
          style: TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: ListView.separated(
        itemBuilder: builder,
        itemCount: listOfItens.length,
        separatorBuilder: (_, index) {
          return Divider();
        },
      ),
    );
  }

  Widget builder(BuildContext _, int index) {
    Itens _itens = listOfItens.elementAt(index);
    return Column(
      children: [
        ListTile(
          title: Expanded(
            child: Row(
              children: [
                Hero(
                  tag: _itens.productImage,
                  child: Image.asset(
                    _itens.productImage,
                    width: 60,
                    height: 60,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(
                  width: 14,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        _itens.product,
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(_itens.description),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        _itens.price,
                        style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        _itens.priceDescription,
                        style: TextStyle(
                          color: Colors.blue,
                        ),
                      ),
                    ],
                  ),
                ),
                IconButton(
                  icon: (_itens.isLoved)
                      ? Icon(
                          Icons.favorite,
                          color: Colors.red,
                        )
                      : Icon(
                          Icons.favorite_border_outlined,
                          color: Colors.red,
                        ),
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
