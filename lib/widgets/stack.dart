import 'package:flutter/material.dart';
import 'package:on_the_go/pages/home_screen.dart';

class StackWidget extends StatelessWidget {
  const StackWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          padding: EdgeInsets.all(2.0),
          height: 900.0,
          child: Image(
          image: AssetImage('assets/images/shutterstock.jpg'),
          width: double.infinity,
          fit: BoxFit.cover,
        ),
    ),
        Positioned(
          bottom:16.0 ,
          top: 16.0,
          child: Text(
            'ON THE GO SELF-CARE',
            style: TextStyle(
              fontSize: 40.0,
              color: Colors.pink,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic

            ),
          ),
        ),
        Positioned(
          bottom:50.0 ,
          top: 750.0,
          child: GestureDetector(
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                    builder: (_) =>HomeScreen(),
                ),
              );
            },
            child: Container(
              height: 10.0,
              margin: EdgeInsets.symmetric(horizontal: 50.0),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                color: Theme.of(context).primaryColor,

              ),
              child: Text(
                'START >> >>',
                style: TextStyle(
                    fontSize: 32.0,
                    color: Colors.lightGreenAccent,
                    fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
