import 'package:GuitarShop/screen/pages/pages.dart';

import 'package:flutter/material.dart';
// import 'package:flybuy/screen/pages/entry/add_product.dart';

import 'package:awesome_notifications/awesome_notifications.dart';

void main() {
  AwesomeNotifications().initialize('resource://drawable/launcher', [
    NotificationChannel(
      channelGroupKey: 'basic_channel_group',
      channelKey: 'basic_channel',
      channelName: 'Basic notifications',
      channelDescription: 'Notification channel for basic test',
      defaultColor: const Color(0XFF9D50DD),
      importance: NotificationImportance.Max,
      ledColor: Colors.white,
      channelShowBadge: true,
    )
  ]);
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Guitar Shop',
      // theme: ThemeData(
      //     scaffoldBackgroundColor: Colors.white,
      //     primarySwatch: mainColorSwatch,
      //     inputDecorationTheme: InputDecorationTheme(
      //         border: OutlineInputBorder(
      //           borderRadius: BorderRadius.circular(50),
      //           borderSide: BorderSide.none,
      //         ),
      //         floatingLabelStyle: const TextStyle(
      //           color: secondaryFontColor,
      //         ),
      //         contentPadding: EdgeInsets.symmetric(
      //           vertical: 4,
      //           horizontal: 28
      //         )
      //         )),
      initialRoute: '/',
      routes: {
        '/': (context) => const SplashPage(),
        '/onboarding': (context) => const IntroPage(),
        '/starter': (context) => const StarterPage(),
        '/login': (context) => const LoginPage(),
        '/register': (context) => const RegisterPage(),
      }));
}
