import 'package:clear/screens/savedInvoice_page.dart';
import 'package:firebase_dynamic_links/firebase_dynamic_links.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DynamicLinkService {
  Future<void> retrieveDynamicLink(BuildContext context) async {
    try {
      final PendingDynamicLinkData data =
          await FirebaseDynamicLinks.instance.getInitialLink();
      final Uri deepLink = data?.link;

      if (deepLink != null) {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => SavedInvoice()));
      }

      FirebaseDynamicLinks.instance.onLink(
          onSuccess: (PendingDynamicLinkData dynamicLink) async {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => SavedInvoice()));
      });
    } catch (e) {
      print(e.toString());
    }
  }

  Future<Uri> createDynamicLink() async {
    final DynamicLinkParameters parameters = DynamicLinkParameters(
      uriPrefix: 'https://clearcopy.page.link',
      link: Uri.parse('https://clearcopy.page.link.com/invoicespage'),
      androidParameters: AndroidParameters(
        packageName: 'com.example.clear',
        minimumVersion: 1,
      ),
    );
    var dynamicUrl = await parameters.buildUrl();

    return dynamicUrl;
  }
}
