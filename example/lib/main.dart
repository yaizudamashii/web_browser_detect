import 'package:flutter/material.dart';
import 'package:web_browser_detect/web_browser_detect.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final browser = Browser();

    return MaterialApp(
      title: 'web_browser_detect Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Material(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('The browser is ${browser.browser}'),
            Text('Browser version is ${browser.version}'),
          ],
        ),
      ),
    );
  }
}
