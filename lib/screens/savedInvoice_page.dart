import 'dart:math';

import 'package:clear/data/custom_widgets.dart';
import 'package:flutter/material.dart';
import 'package:fluttericon/entypo_icons.dart';
import 'package:fluttericon/font_awesome5_icons.dart';
import 'package:fluttericon/typicons_icons.dart';
import 'package:google_fonts/google_fonts.dart';

class SavedInvoice extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 65,
        title: Row(
          children: [
            Text(
              'Invoice #CT-3',
              style: GoogleFonts.lato(
                  fontSize: 18,
                  color: Colors.black,
                  letterSpacing: -0.3,
                  fontWeight: FontWeight.w500),
            ),
            SizedBox(width: 10),
            Container(
              height: 30,
              width: 60,
              decoration: BoxDecoration(
                color: Colors.blue[100],
                borderRadius: BorderRadius.all(Radius.circular(5)),
              ),
              child: Center(
                  child: Text(
                'Saved',
                style: GoogleFonts.lato(
                  color: Colors.black,
                  fontSize: 13,
                ),
              )),
            ),
          ],
        ),
        elevation: 0,
        leadingWidth: 50,
        backgroundColor: Colors.white,
        leading: TextButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.keyboard_arrow_left,
            color: Colors.black,
            size: 32,
          ),
        ),
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.only(
              right: 20,
            ),
            child: Row(
              children: [
                Icon(
                  Typicons.pencil,
                  color: Colors.grey,
                  size: 20,
                ),
                SizedBox(width: 15),
                Icon(
                  FontAwesome5.brush,
                  color: Colors.grey,
                  size: 20,
                ),
                SizedBox(width: 15),
                Transform.rotate(
                  angle: 90 * pi / 180,
                  child: Icon(
                    Entypo.dot_3,
                    color: Colors.grey,
                    size: 20,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Container(
              height: 1000,
              padding: EdgeInsets.all(18),
              color: Colors.grey[100],
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 18),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Invoice',
                              style: GoogleFonts.lato(
                                color: Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Text(
                              'Invoice #CT-3',
                              style: GoogleFonts.lato(
                                color: Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Bill to',
                              style: GoogleFonts.lato(
                                fontWeight: FontWeight.w500,
                                fontSize: 15,
                              ),
                            ),
                            Text(
                              'Abc',
                              style: GoogleFonts.lato(
                                fontWeight: FontWeight.w500,
                                fontSize: 15,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 8),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Created',
                              style: GoogleFonts.lato(
                                color: Colors.grey,
                                fontWeight: FontWeight.w600,
                                fontSize: 15,
                              ),
                            ),
                            Text(
                              '22 Mar 2021',
                              style: GoogleFonts.lato(
                                color: Colors.grey,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        Divider(),
                        SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'ITEMS',
                              style: GoogleFonts.lato(
                                color: Colors.grey,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'ITEM 1',
                              style: GoogleFonts.lato(
                                fontWeight: FontWeight.w500,
                                fontSize: 15,
                              ),
                            ),
                            Text(
                              '₹10,000.00',
                              style: GoogleFonts.lato(
                                fontWeight: FontWeight.w500,
                                fontSize: 15,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 8),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '1.00 Unit(s) x ₹10,000\nTax:',
                              style: GoogleFonts.lato(color: Colors.grey),
                            ),
                            Text(
                              '₹0',
                              style: GoogleFonts.lato(color: Colors.grey),
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        Divider(),
                        SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Subtotal',
                              style: GoogleFonts.lato(
                                fontWeight: FontWeight.w500,
                                fontSize: 15,
                              ),
                            ),
                            Text(
                              '₹10,000.00',
                              style: GoogleFonts.lato(
                                fontWeight: FontWeight.w500,
                                fontSize: 15,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 8),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Total Tax (CGST + SGST)',
                              style: GoogleFonts.lato(color: Colors.grey),
                            ),
                            Text(
                              '₹0',
                              style: GoogleFonts.lato(color: Colors.grey),
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Total Amount Due',
                              style: GoogleFonts.lato(
                                fontWeight: FontWeight.w600,
                                fontSize: 15,
                              ),
                            ),
                            Text(
                              '₹10,000.00',
                              style: GoogleFonts.lato(
                                fontWeight: FontWeight.w500,
                                fontSize: 15,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 15,
            right: 30,
            left: 30,
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {},
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.indigo,
                          borderRadius: BorderRadius.all(Radius.circular(5))),
                      width: MediaQuery.of(context).size.width / 2,
                      height: 48,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.share_outlined,
                            color: Colors.white,
                          ),
                          SizedBox(width: 5),
                          Text(
                            'Share',
                            style: GoogleFonts.lato(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 20),
                Expanded(
                  child: GestureDetector(
                    onTap: () {},
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.indigo),
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(5))),
                      width: MediaQuery.of(context).size.width / 2,
                      height: 48,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.picture_as_pdf_outlined,
                            color: Colors.indigo,
                          ),
                          SizedBox(width: 5),
                          Text(
                            'View PDF',
                            style: GoogleFonts.lato(
                              color: Colors.indigo,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
