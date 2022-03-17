import 'package:flutter/material.dart';
import 'package:navigasi_rute/widget/card_item.dart';

class ItemPage extends StatelessWidget {
  const ItemPage(
      {Key? key,
      required this.name,
      required this.quantity,
      required this.price})
      : super(key: key);

  static const routeName = '/item';

  final String name;
  final int quantity;
  final int price;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: const Text('Item Page - Bagas Prambudi (2031710108)'),
        ),
        body: Container(
          margin: const EdgeInsets.all(8),
          child: CardItemWidget(name: name, quantity: quantity, price: price),
        ),
      ),
    );
  }
}
