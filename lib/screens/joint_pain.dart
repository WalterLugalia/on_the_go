import 'package:flutter/material.dart';
class JointScreen extends StatefulWidget {
  const JointScreen({Key? key}) : super(key: key);

  @override
  _JointScreenState createState() => _JointScreenState();
}

class _JointScreenState extends State<JointScreen> {
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
                'JOINTPAIN',
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
                  child: Text(' It occurs when there is discomfort where two bones physicaly meet to form a joint.'
                      'Joint pain can have a cause that arent due to underlying diseases.'
                      'Example include overuse such as a heavy physical activity, lack of use, sparins or strains',

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
1)Have pain accompanied by by redness or swelling.

2)Feel warmth around the joint

3)Struggle to complete daily task

4)Sudden swelling
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
                  
Rub the joints with Mentho pluss relive pain.
If symptoms persist see the doctor for medical advice
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
