import 'package:clear/data/styles.dart';
import 'package:flutter/material.dart';
import 'package:fluttericon/elusive_icons.dart' as eicon;
import 'package:fluttericon/font_awesome5_icons.dart' as ficon;
import 'package:google_fonts/google_fonts.dart';
import 'package:fluttericon/entypo_icons.dart' as enicon;

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        color: bgcommon,
        child: Column(
          children: [
            Container(
              height: 160,
              padding: EdgeInsets.only(top: 40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Icon(
                        Icons.library_books_rounded,
                        size: 30,
                        color: Colors.indigo,
                      ),
                      SizedBox(height: 5),
                      Text(
                        'Create\nInvoice',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Icon(
                        Icons.shopping_cart_rounded,
                        size: 30,
                      ),
                      SizedBox(height: 5),
                      Text(
                        'Add\nPurchase',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Icon(
                        ficon.FontAwesome5.rupee_sign,
                        size: 30,
                        color: Colors.indigo,
                      ),
                      SizedBox(height: 5),
                      Text(
                        'Record\nPayment',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              height: (MediaQuery.of(context).size.height) * 2,
              padding: EdgeInsets.symmetric(horizontal: 25, vertical: 20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.call_received_sharp,
                                  color: Colors.green[400],
                                  size: 14,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  'Amount Receivable',
                                  style: TextStyle(
                                    color: Colors.grey[600],
                                    fontSize: 12,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 15),
                            Container(
                              height: 63,
                              decoration: BoxDecoration(
                                  color: bgcommon,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5))),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    '₹30.00k',
                                    style: GoogleFonts.lato(
                                      color: Colors.indigo,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 22,
                                    ),
                                  ),
                                  Icon(
                                    Icons.keyboard_arrow_right,
                                    color: Colors.indigo,
                                    size: 22,
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Expanded(
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.call_made_sharp,
                                  color: Colors.red,
                                  size: 14,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  'Amount Payable',
                                  style: TextStyle(
                                    color: Colors.grey[600],
                                    fontSize: 12,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 15),
                            Container(
                              height: 63,
                              decoration: BoxDecoration(
                                  color: bgcommon,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5))),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    '₹0',
                                    style: GoogleFonts.lato(
                                      color: Colors.indigo,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 22,
                                    ),
                                  ),
                                  Icon(
                                    Icons.keyboard_arrow_right,
                                    color: Colors.indigo,
                                    size: 22,
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 35),
                  Column(
                    children: [
                      ListTileTheme(
                        style: ListTileStyle.list,
                        contentPadding: EdgeInsets.all(0),
                        minVerticalPadding: 0,
                        child: ListTile(
                          leading: CircleAvatar(
                            radius: 30,
                            backgroundColor: bgcommon,
                            child: Icon(
                              Icons.my_library_books_rounded,
                              color: Colors.black87,
                              size: 30,
                            ),
                          ),
                          title: Text(
                            'Manage Invoices',
                            style:
                                GoogleFonts.lato(fontWeight: FontWeight.bold),
                          ),
                          subtitle: Padding(
                            padding: EdgeInsets.only(top: 8),
                            child: Text(
                              'Generate and track invoices',
                              style: GoogleFonts.lato(
                                color: Colors.grey[700],
                                fontSize: 12,
                              ),
                            ),
                          ),
                          trailing: Icon(
                            Icons.keyboard_arrow_right,
                            color: Colors.grey[600],
                            size: 21,
                          ),
                        ),
                      ),
                      SizedBox(height: 13),
                      ListTileTheme(
                        style: ListTileStyle.list,
                        contentPadding: EdgeInsets.all(0),
                        minVerticalPadding: 0,
                        child: ListTile(
                          leading: CircleAvatar(
                            radius: 30,
                            backgroundColor: bgcommon,
                            child: Icon(
                              Icons.laptop_mac_rounded,
                              color: Colors.black87,
                              size: 30,
                            ),
                          ),
                          title: Text(
                            'Passbook',
                            style:
                                GoogleFonts.lato(fontWeight: FontWeight.bold),
                          ),
                          subtitle: Padding(
                            padding: EdgeInsets.only(top: 8),
                            child: Text(
                              'All bank, UPI, Card, Wallet Payments',
                              style: GoogleFonts.lato(
                                color: Colors.grey[700],
                                fontSize: 12,
                              ),
                            ),
                          ),
                          trailing: Icon(
                            Icons.keyboard_arrow_right,
                            color: Colors.grey[600],
                            size: 21,
                          ),
                        ),
                      ),
                      SizedBox(height: 13),
                      ListTileTheme(
                        style: ListTileStyle.list,
                        contentPadding: EdgeInsets.all(0),
                        minVerticalPadding: 0,
                        child: ListTile(
                          leading: CircleAvatar(
                            radius: 30,
                            backgroundColor: bgcommon,
                            child: Icon(
                              Icons.find_in_page_outlined,
                              color: Colors.black87,
                              size: 30,
                            ),
                          ),
                          title: Text(
                            'Business Lookup',
                            style:
                                GoogleFonts.lato(fontWeight: FontWeight.bold),
                          ),
                          subtitle: Padding(
                            padding: EdgeInsets.only(top: 8),
                            child: Text(
                              'Find information about any GSTIN',
                              style: GoogleFonts.lato(
                                color: Colors.grey[700],
                                fontSize: 12,
                              ),
                            ),
                          ),
                          trailing: Icon(
                            Icons.keyboard_arrow_right,
                            color: Colors.grey[600],
                            size: 21,
                          ),
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
    );
  }
}
