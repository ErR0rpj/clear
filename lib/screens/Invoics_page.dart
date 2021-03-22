import 'package:clear/screens/createInvoice_page.dart';
import 'package:flutter/material.dart';

class InvoicesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: TextButton(
          child: Text('Invoices'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => CreateInvoice(),
              ),
            );
          },
        ),
      ),
    );
  }
}
