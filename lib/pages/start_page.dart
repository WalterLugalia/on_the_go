import 'package:flutter/material.dart';
import 'package:on_the_go/widgets/stack.dart';

class Startpage extends StatefulWidget {
  const Startpage({Key? key}) : super(key: key);

  @override
  _StartpageState createState() => _StartpageState();
}

class _StartpageState extends State<Startpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: StackWidget(),
        ) ,
    );
  }
}
