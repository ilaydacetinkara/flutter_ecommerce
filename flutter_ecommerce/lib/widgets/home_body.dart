import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/models/products.dart';
import '../widgets/category.dart';
import '../widgets/all_pdts.dart';
import 'package:flutter_ecommerce/widgets/category_card.dart';

class HomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        SizedBox(
          height: 10,
        ),
        Center(
            child: Text(
          'Categories',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        )),
        SizedBox(
          height: 10,
        ),
        Category(),
        Center(
            child: Text(
          'Products',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        )),
        AllProducts(),
      ],
    );
  }
}

