import 'package:flutter/material.dart';
import 'package:fluttericon/font_awesome5_icons.dart' as ficon;
import 'package:fluttericon/elusive_icons.dart' as eicon;
import 'package:fluttericon/entypo_icons.dart' as enicon;
import 'package:google_fonts/google_fonts.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(Clear());
}

class Clear extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'clear',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'clear',
          style: GoogleFonts.lato(
            fontSize: 30,
            color: Colors.black,
            fontWeight: FontWeight.w700,
            letterSpacing: -0.9,
          ),
        ),
        elevation: 0,
        centerTitle: true,
        backgroundColor: Color(0xFFF3F3FD),
        leading: Icon(
          Icons.sort_rounded,
          color: Colors.grey[700],
          size: 32,
        ),
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.only(
              right: 20,
            ),
            child: CircleAvatar(
              radius: 18,
              backgroundColor: Color(0xFFDEDFE9),
              child: Icon(
                Icons.notifications,
                size: 20,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 20,
        selectedFontSize: 12,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(eicon.Elusive.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.people_alt_outlined,
              size: 25,
            ),
            activeIcon: Icon(
              Icons.people_alt,
              size: 25,
            ),
            label: 'Parties',
          ),
          BottomNavigationBarItem(
            icon: Icon(enicon.Entypo.doc_text),
            activeIcon: Icon(enicon.Entypo.doc_text_inv),
            label: 'Invoices',
          ),
        ],
        selectedItemColor: Colors.indigo,
        unselectedItemColor: Colors.grey[600],
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
      body: <Widget>[][_currentIndex],
    );
  }
}
