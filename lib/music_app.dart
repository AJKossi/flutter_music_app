import 'package:flutter/material.dart';
import 'package:music_app/account_page.dart';
import 'package:music_app/payment_page.dart';
import 'package:music_app/settings_page.dart';
import 'package:music_app/splash_page.dart';

class MusicApp extends StatelessWidget {
  const MusicApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Music App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: "/",
      routes: <String, WidgetBuilder>{
        "/": (context) => const SplashPage(),
        "/settings": (context) => const SettingsPage(),
        "/payment": (context) => const PaymentPage(),
        "/account": (context) => const AccountPage()
      },
    );
  }
}
