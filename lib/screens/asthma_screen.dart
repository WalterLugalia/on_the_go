import 'package:flutter/material.dart';
class AsthmaScreen extends StatefulWidget {
  const AsthmaScreen({Key? key}) : super(key: key);

  @override
  _AsthmaScreenState createState() => _AsthmaScreenState();
}

class _AsthmaScreenState extends State<AsthmaScreen> {
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
                'ASTHMA',
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
                  child: Text('Also known as bronchial asthma, It may be caused by difficulty in breathing, chest pain, cough and weezing. The symptoms may sometime flare up. '
                      'It causes the airways of a person become infalmed and swelland produce extra mucus  ',

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
1)Cough: can occur at night , during exercise, can be chronic, dry,with phlegm, mild or severe

2)Respiratory: difficulty breathing, wheezing, breathing through the mouth, fast breathing, Frequent respiratory infections, rapid breathing, or shortness of breath at night

3)Almost common chets pressure, flare, anxiety, early awakening fast heart rate,or throat irritation.
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
