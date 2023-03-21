import 'package:all_in_one_shopping_apps/screens/home/provider/home_provider.dart';
import 'package:all_in_one_shopping_apps/screens/home/view/home_screen.dart';
import 'package:all_in_one_shopping_apps/screens/web/view/web_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) =>  HomeProvider(),),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        //initialRoute: 'web',
        routes: {
          '/': (context) => HomeScreen(),
          'web':(context) => WebScreen(),
        },
      ),
    ),
  );
}
