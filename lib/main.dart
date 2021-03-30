import 'package:clear/data/custom_widgets.dart';
import 'package:clear/screens/Invoics_page.dart';
import 'package:clear/screens/home_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttericon/font_awesome5_icons.dart' as ficon;
import 'package:fluttericon/elusive_icons.dart' as eicon;
import 'package:fluttericon/entypo_icons.dart' as enicon;
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

const AndroidNotificationChannel channel = AndroidNotificationChannel(
    'high_importance_channel', // id
    'High Importance Notifications', // name
    'This channel is used for important notifications.', // description
    importance: Importance.high);

final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
    FlutterLocalNotificationsPlugin();

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp();

  await flutterLocalNotificationsPlugin
      .resolvePlatformSpecificImplementation<
          AndroidFlutterLocalNotificationsPlugin>()
      ?.createNotificationChannel(channel);
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
  bool _newNotification = false;

  @override
  void initState() {
    super.initState();

    FirebaseMessaging.instance
        .getInitialMessage()
        .then((RemoteMessage message) {
      if (message != null) {
        print('initial message read. GHUSA');
      }
    });

    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      print('ghusa in recieved message foredound');
      RemoteNotification notification = message.notification;
      AndroidNotification android = message.notification?.android;

      // If `onMessage` is triggered with a notification, construct our own
      // local notification to show to users using the created channel.
      if (notification != null && android != null) {
        print('Ghusa in making notification');
        flutterLocalNotificationsPlugin
            .show(
                5,
                notification.title,
                notification.body,
                NotificationDetails(
                  android: AndroidNotificationDetails(
                    channel.id,
                    channel.name,
                    channel.description,
                    icon: 'launch_background',
                    importance: Importance.high,
                    // other properties...
                  ),
                ))
            .then((value) => print('finish creting notification'));
      }
    });

    FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) {
      print('A new onMessageOpenedApp event was published!');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _currentIndex == 0 ? homePageAppbar : invoicesAppbar,
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
              Icons.notifications,
              size: 25,
            ),
            label: 'Notifications',
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
      body: <Widget>[
        HomePage(),
        Container(),
        InvoicesPage(),
      ][_currentIndex],
    );
  }
}
