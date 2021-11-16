import 'package:flutter/material.dart';
import 'package:on_the_go/screens/asthma_screen.dart';
class Asthma extends StatefulWidget {
  const Asthma({Key? key}) : super(key: key);

  @override
  _AsthmaState createState() => _AsthmaState();
}

class _AsthmaState extends State<Asthma> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) =>AsthmaScreen(),
          ),
        );
      },
      child: Container(

        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            height: 100.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(100.0),
                bottomRight: Radius.circular(10.0),
              ),
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.white,
                  Colors.lightBlueAccent.shade400
                ],
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  blurRadius: 10.0,
                  offset: Offset(0.0, 10.0,),
                ),
              ],
            ),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: CircleAvatar(
                    radius: 60.0,
                    backgroundImage: AssetImage('assets/images/medicinecabinate1.jpg'),


                  ),
                ),
                SizedBox(width: 10.0,),
                Expanded(
                  child: Text(
                    'ASTHMA',
                    style: TextStyle(
                      fontSize: 32.0,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
