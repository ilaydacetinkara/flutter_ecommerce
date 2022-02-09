import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/models/cart.dart';
import 'package:flutter_ecommerce/models/products.dart';
import 'package:flutter_ecommerce/screens/cart_screen.dart';
import 'package:flutter_ecommerce/screens/homepage.dart';
import 'package:provider/provider.dart';
import 'package:flutter_ecommerce/screens/pdt_detail_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(
          value: Products(),
        ),
        ChangeNotifierProvider.value(
          value: Cart(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter E-commerce App',
        theme: ThemeData(primaryColor: Colors.teal, accentColor: Colors.white),
        home: HomePage(),
        routes: {
          DetailPage.routeName: (ctx) => DetailPage(),
          CartScreen.routeName: (ctx) => CartScreen(),
        },
      ),
    );
  }
}
