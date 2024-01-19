import 'package:flutter/material.dart';
import 'package:music_app/music_list_page.dart';
import 'package:music_app/notifications_page.dart';
import 'package:music_app/payment_page.dart';
import 'package:music_app/settings_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int activeIndex = 0;
  List<Widget> pages = [
    MusicListPage(),
    PaymentPage(),
    NotificationsPage(),
    SettingsPage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.credit_card), label: "Payments"),
          BottomNavigationBarItem(
              icon: Icon(Icons.notifications), label: "Notifications"),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: "Settings")
        ],
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.black,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        onTap: (index) {
          setState(() {
            activeIndex = index;
          });
        },
        currentIndex: activeIndex,
      ),
      appBar: AppBar(
        elevation: 4,
        backgroundColor: Colors.black,
        leadingWidth: 150,
        leading: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 8),
          child: Text(
            "Tracks",
            style: TextStyle(
                color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),
          ),
        ),
      ),
      body: pages[activeIndex]// This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
