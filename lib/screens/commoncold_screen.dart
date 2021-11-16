import 'package:flutter/material.dart';
class CommoncoldScreen extends StatefulWidget {
  const CommoncoldScreen({Key? key}) : super(key: key);

  @override
  _CommoncoldScreenState createState() => _CommoncoldScreenState();
}

class _CommoncoldScreenState extends State<CommoncoldScreen> {
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
                'COMMON COLD',
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
                  child: Text('The common cold and the flue may seem very similar at first. '
                      'They are indeed both respiratory illnesses and can cause similar symptoms . '
                      'However, different viruses cause these two conditions, and your symptoms will gradually help you differenciate them ',

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
1)congestion
2)Sinus pressure
3)runny nose
4)Stuffy nose
5)loss of smell or taste
6)Sneezing
7)watery nasal secretions
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
                    Use of antibiotics
                    ie. Flagella
                    2 * 1 = 1 day
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
