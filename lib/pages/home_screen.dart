import 'package:flutter/material.dart';
import 'package:on_the_go/widgets/side_menu_drawer.dart';

import '../note_entry.dart';
import 'abdominal_pain.dart';
import 'asthma.dart';
import 'chickenpox.dart';
import 'common_cold.dart';
import 'diorrhea.dart';
import 'headache.dart';
import 'joint_pain.dart';
import 'malaria.dart';
import 'nose_bleed.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: SideMenuDrawer(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              SizedBox(height: 5.0,),
              Padding(
                padding: EdgeInsets.all(10.0),
                child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                        borderSide: BorderSide(width: 0.6),
                      ),
                      contentPadding: EdgeInsets.all( 10.0,),
                      prefixIcon: Icon(Icons.search),
                      hintText: "Search online",

                    ),
                  ),
              ),
              SizedBox(height: 10.0,),
              Malaria(),
              SizedBox(height: 10.0,),
              Headache(),
              SizedBox(height: 10.0,),
              CommonCold(),
              SizedBox(height: 10.0,),
              Asthma(),
              SizedBox(height: 10.0,),
              NoseBleed(),
              SizedBox(height: 10.0,),
              AbdominalPain(),
              SizedBox(height: 10.0,),
              JointPain(),
              SizedBox(height: 10.0,),
              ChickenPox(),
              SizedBox(height: 10.0,),
              DiarrhoeaVomiting(),
              SizedBox(height: 10.0,),
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniEndFloat,
      floatingActionButton: Container(
        height: 100.0,
        width: 100.0,
        child: FittedBox(
          child: FloatingActionButton(
              tooltip: 'Enter note',
              child: Icon(Icons.note,
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) =>Note(),
                  ),
                );
              }
          ),
        ),
      ),
    );
  }
}
