import 'package:flutter/material.dart';

class ScreenHome extends StatefulWidget {
  const ScreenHome({Key? key}) : super(key: key);

  @override
  _ScreenHomeState createState() => _ScreenHomeState();
}

class _ScreenHomeState extends State<ScreenHome> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[    Text('Mail'),    Text('SMS'),    Text('Call'),  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff22263E),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xff4942CE),
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white.withOpacity(0.5),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.mail),
            label: 'Mail',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message),
            label: 'SMS',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.call),
            label: 'Call',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
