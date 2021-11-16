import 'package:flutter/material.dart';
class AbdominalScreen extends StatefulWidget {
  const AbdominalScreen({Key? key}) : super(key: key);

  @override
  _AbdominalScreenState createState() => _AbdominalScreenState();
}

class _AbdominalScreenState extends State<AbdominalScreen> {
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
                'ABDOMINAL PAIN',
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
                  child: Text(' Pain from the outer muscle wall or inside the abdomen ranging from mild and temporary to severe and requring emergency care. '
                      'Abdominal pain can have cause that are not due to the underlying disease. '
                      'Example include constipation, Wind, overeating, Stress or muscle strain ',

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
1)Have recurring or persistent pain.

2)Cant sleep because of pain.

3)Develop a fever.

4)Have chest pain or pressure.

5)Experience abdominal swelling.
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
Taking an antacid or anti-wind medication and eating smaller meals may help to relive heartburn or wind. 
Avoid taking aspirin as this can worsen some abdominal pain
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
