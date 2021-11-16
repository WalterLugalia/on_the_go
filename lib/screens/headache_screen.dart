import 'package:flutter/material.dart';
class HeadacheScreen extends StatefulWidget {
  const HeadacheScreen({Key? key}) : super(key: key);

  @override
  _HeadacheScreenState createState() => _HeadacheScreenState();
}

class _HeadacheScreenState extends State<HeadacheScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Image(
                image: AssetImage('assets/images/headache.jpg'),
                fit: BoxFit.cover,
                width: double.infinity,
              ),
              SizedBox(height: 10.0,),
              Text(
                'HEADACHE',
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
                  child: Text('This are conditions that people comonly experience throught their lives. It is usualy experience by having pain in your head,face or both .'
                      'This can be throbbing constant, sharp or dull. Headache can be treated with medication, stress management and biofeedback ',

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
Pain tends to be:
1)Consistent without throbbing.

2)Worse during routine activities (such as bending over or walking upstairs).

3)Responsive to the over the counter treatment.

4)On both side of the head.

5)Mild moderate.
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
                     Try over the counter drugs
                     Mara moja 
                     panadol extra 
                     Sona moja
                     2*1=1
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
