import 'package:flutter/material.dart';
import 'package:music_app/account_page.dart';
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
    SettingsPage(),
    AccountPage()
  ];
  final GlobalKey<ScaffoldState> sc=GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: sc,
      backgroundColor: Colors.black,
      drawer: _PMusicDrawer(),
      bottomNavigationBar: _PMusicBottomNav(),
      appBar: AppBar(
        elevation: 4,
        backgroundColor: Colors.lightBlue,
        leadingWidth: 150,
        leading: Padding(
          padding: EdgeInsets.symmetric(horizontal: 8),
          child: GestureDetector(
            onTap: (){
              _openPMusicDrawer();
            },
            child: Text(
              "PMusic",
              style: TextStyle(
                  color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
      body: pages[activeIndex],
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: ElevatedButton(
        onPressed: (){
          _openPMusicDrawer();
        }, child:Text("Open menu")),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  BottomNavigationBar _PMusicBottomNav() {
    return BottomNavigationBar(
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
        BottomNavigationBarItem(
            icon: Icon(Icons.credit_card), label: "Payments"),
        BottomNavigationBarItem(
            icon: Icon(Icons.notifications), label: "Notifications"),
        BottomNavigationBarItem(icon: Icon(Icons.settings), label: "Settings"),
        BottomNavigationBarItem(icon: Icon(Icons.verified_user), label: "Account")
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
    );
  }

  void _openPMusicDrawer(){
      sc.currentState!.openDrawer();
  }
  Widget _PMusicDrawer(){
    return Drawer(
        backgroundColor: Colors.white,
        width: 240,
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                'PMusic',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              title: Text('Afro Music'),
              onTap: () {
                print("Drawer Item 1");
              },
            ),
            ListTile(
              title: Text('Latino Music'),
              onTap: () {
                print("Drawer Item 2");
              },
            ),
            ListTile(
              title: Text('Western Music'),
              onTap: () {
                print("Drawer Item 3");
              },
            ),
          ],
        ),
      );
  }
}
