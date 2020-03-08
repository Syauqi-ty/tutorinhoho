import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tutorinhoho/course_notifier.dart';
import 'package:tutorinhoho/loading_page.dart';


void main() => runApp(MultiProvider(
  providers: [
    ChangeNotifierProvider(
      create:(context)=>Pass())
  ],
  child: MyApp(),
));

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoadingPage(),
    );
  }
}
