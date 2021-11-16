
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MalariaScreen extends StatefulWidget {
  const MalariaScreen({Key? key}) : super(key: key);

  @override
  _MalariaScreenState createState() => _MalariaScreenState();
}

class _MalariaScreenState extends State<MalariaScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Image(
                image: AssetImage('assets/images/nursinghome.jpg'),
                  fit: BoxFit.cover,
                  width: double.infinity,
              ),
                SizedBox(height: 10.0,),
                Text(
                  'Malaria',
                  style: TextStyle(
                    color: Colors.lightGreen,
                    fontSize: 40.0,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.normal,
                  ),
                ),
                Divider(),
                Container(
                  height: 400.0,
                  width: 400.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20.0)),
                    color: Colors.lightBlueAccent,
                  ),

                  child: Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text('Malaria is a disease that spreads when a person is bite by infected mosquito. '
                        'The mosquito transfers parasites into the person blood stream.'
                        'In rare cases pregnant woman with malaria can tansfer the diseases to their children before or during birth.'
                        'very rarely, malaria can transfer through blood transfusions organ donations and hypodermic needles ',
                      
                      style: TextStyle(
                      color: Colors.black54,
                      fontSize: 25.0,
                      fontWeight: FontWeight.normal,
                      fontStyle: FontStyle.normal,
                    ),
                    ),
                  ),
                ),
                Text(
                  'Symptoms',

                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                  ),
                ),
                Container(
                  height: 400.0,
                  width: 400.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20.0)),
                    color: Colors.lightBlueAccent,
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      '''
1)Fever and sweating.

2)Chills that shake the whole body.

3)Headache and muscle aches.

4)Chest pain breathing problems and cough.

5)Fatigue.

6)Diarrhoea and vomiting.
                    ''',
                      textAlign: TextAlign.start,

                      style: TextStyle(
                        color: Colors.black54,
                        fontSize: 25.0,
                        fontWeight: FontWeight.normal,
                        fontStyle: FontStyle.normal,
                      ),
                    ),
                  ),
                ),
                Divider(),
                Text(
                  'Treatment',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                  ),
                ),
                Divider(),
                Container(
                  height: 150.0,
                  width: 400.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20.0)),
                    color: Colors.lightBlueAccent,
                  ),

                  child: Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text('''
                    Malaria Queen
                    3*1 = daily
                    ''',

                      style: TextStyle(
                        color: Colors.black54,
                        fontSize: 25.0,
                        fontWeight: FontWeight.normal,
                        fontStyle: FontStyle.normal,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20.0,)
              ],
            ),
          ),
      ) ,
    );
  }
}
