import 'package:flutter/material.dart';
import 'package:grocery_tute/model/cart.dart';
import 'package:grocery_tute/pages/intro_page.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const Mainpage());
}


class Mainpage extends StatelessWidget {
  const Mainpage({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(create: (context)=> Cartmodel(),
    child: MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Intro_page(),
    ),
    );
  }
}
