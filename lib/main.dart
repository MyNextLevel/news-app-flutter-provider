import 'package:flutter/material.dart';
import 'package:kunuz_clone/bloc/providers/bottom_navigation_bar_provider.dart';
import 'package:kunuz_clone/ui/screens/main_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'News App',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: ChangeNotifierProvider<BottomNavigationBarProvider>(
        child: MainPage(),
        create: (context) => BottomNavigationBarProvider(),
      ),
    );
  }
}
