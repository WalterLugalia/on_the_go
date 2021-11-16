import 'package:flutter/material.dart';
import 'package:on_the_go/screens/nosebleed_screen.dart';
class NoseBleed extends StatefulWidget {
  const NoseBleed({Key? key}) : super(key: key);

  @override
  _NoseBleedState createState() => _NoseBleedState();
}

class _NoseBleedState extends State<NoseBleed> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) =>NosebleedScreen(),
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
                    backgroundImage: AssetImage('assets/images/pharmacist.jpg'),


                  ),
                ),
                SizedBox(width: 10.0,),
                Expanded(
                  child: Text(
                    'NOSE BLEED',
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
