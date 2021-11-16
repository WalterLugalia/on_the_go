import 'package:flutter/material.dart';
import 'package:on_the_go/pages/home_screen.dart';

import '../note_entry.dart';

class SideMenuDrawer extends StatelessWidget {
  const SideMenuDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context)
  {
    return Drawer(
      child: Column(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Image(
                height: 300.0,
                width: double.infinity,
                fit: BoxFit.cover,
                image: AssetImage('assets/images/colortabs.jpg'),
              ),
              Positioned(
                left: 10.0,
                bottom: 10.0,
                child: CircleAvatar(
                  radius: 60.0,
                  backgroundImage: AssetImage('assets/images/medicinecabinate1.jpg'),
                  ),
                ),
            ],
          ),
          SizedBox(height: 10.0,),
          ListTile(
            leading: Icon(Icons.note),
            title: Text('Note'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) =>Note(),
                ),
              );
            },
          ),
          SizedBox(height: 10.0,),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('HomeScreen'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) =>HomeScreen(),
                ),
              );
            },
          ),
          SizedBox(height: 10.0,),
          ListTile(
            leading: Icon(Icons.call),
            title: Text('Emergency'),
          ),
          SizedBox(height: 20.0,),
          ListTile(
            leading: Icon(Icons.add_business_outlined),
            title: Text('About'),
            onTap: (){},
          ),
        ],
      ),
    );
  }
}
