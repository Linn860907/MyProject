import 'package:flutter/material.dart';

//Drawer
class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          const DrawerHeader(
            padding: EdgeInsets.all(10.0),
            decoration: BoxDecoration(
              color: Color(0xFF18b6b2),
            ),
            child: Text(
              'Menu',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.w700,
                  color: Colors.white        
                ),
              ),
          ),
          ListTile(
            title: const Text('Home'),
            onTap: () {
              Navigator.popAndPushNamed(context, '/');
            },
          ),
          // ListTile(
          //   title: const Text('LANGUAGE'),
          //   onTap: () {
          //     Navigator.popAndPushNamed(context, '/language');
          //   },
          // ),
          ListTile(
            title: const Text('STORE'),
            onTap: () {
              Navigator.popAndPushNamed(context, '/store');
            },
          ),
          ListTile(
            title: const Text('LOOKBOOK_21'),
            onTap: () {
              Navigator.popAndPushNamed(context, '/lookbook_21');
            },
          ),
          ListTile(
            title: const Text('LOOKBOOK_22'),
            onTap: () {
              Navigator.popAndPushNamed(context, '/lookbook_22');
            },
          ),
          ListTile(
            title: const Text('LOOKBOOK_23'),
            onTap: () {
              Navigator.popAndPushNamed(context, '/lookbook_23');
            },
          ),
          // ListTile(
          //   title: const Text('CONCEPT PROJECT'),
          //   onTap: () {
          //     Navigator.popAndPushNamed(context, '/concept project');
          //   },
          // ),
          ListTile(
            title: const Text('About MillionFlash'),
            onTap: () {
              Navigator.popAndPushNamed(context, '/about millionflash');
            },
          ),
          // ListTile(
          //   title: const Text('PX'),
          //   onTap: () {
          //     Navigator.popAndPushNamed(context, '/px');
          //   },
          // ),
        ],
      ),
    );
  }
}