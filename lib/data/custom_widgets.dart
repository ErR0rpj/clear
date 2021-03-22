import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

AppBar homePageAppbar = AppBar(
  backwardsCompatibility: false,
  toolbarHeight: 65,
  systemOverlayStyle: SystemUiOverlayStyle(statusBarColor: Color(0xFFF3F3FD)),
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
);

AppBar invoicesAppbar = AppBar(
  toolbarHeight: 65,
  title: Text(
    'Invoice',
    style: GoogleFonts.lato(
        fontSize: 18,
        color: Colors.black,
        letterSpacing: -0.9,
        fontWeight: FontWeight.w500),
  ),
  elevation: 0,
  leadingWidth: 25,
  backgroundColor: Colors.white,
  leading: Icon(
    Icons.keyboard_arrow_left,
    color: Colors.black,
    size: 32,
  ),
  actions: <Widget>[
    Padding(
      padding: EdgeInsets.only(
        right: 20,
      ),
      child: Icon(
        Icons.settings_outlined,
        color: Colors.grey[700],
      ),
    ),
  ],
);
