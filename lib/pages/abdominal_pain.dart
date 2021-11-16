import 'package:flutter/material.dart';
import 'package:on_the_go/screens/abdominal_pain.dart';
class AbdominalPain extends StatefulWidget {
  const AbdominalPain({Key? key}) : super(key: key);

  @override
  _AbdominalPainState createState() => _AbdominalPainState();
}

class _AbdominalPainState extends State<AbdominalPain> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) =>AbdominalScreen(),
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
                    backgroundImage: AssetImage('assets/images/medcationcabinate2.jpg'),


                  ),
                ),
                SizedBox(width: 10.0,),
                Expanded(
                  child: Text(
                    'ABDOMINAL PAIN',
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
