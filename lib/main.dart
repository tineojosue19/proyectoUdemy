import 'package:flutter/material.dart';
import 'package:udemyyyyy/src/routes/routes.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: routes,
      initialRoute: 'welcome',
      theme: ThemeData(
          useMaterial3: true,

          colorScheme: ColorScheme.fromSeed(
            seedColor: Color.fromRGBO(255, 140, 0, 1),
          ),

          primaryColor: Color.fromRGBO(10, 31, 68, 1),

          disabledColor: Color.fromRGBO(142, 142, 147, 1),

          scaffoldBackgroundColor: Colors.white,

          appBarTheme: const AppBarTheme(
            iconTheme: IconThemeData(
            color: Colors.black
          ),
        )
      ),
    );
  }
}