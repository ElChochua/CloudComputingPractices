import 'package:flutter/material.dart';
import 'package:fluttertestperron/src/practica_2/main_practica_2.dart';
import 'package:fluttertestperron/src/practica_1/userData.dart';
import 'package:fluttertestperron/src/mini_proyecto/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            bottom: const TabBar(
              tabs: [
                Tab(icon: Icon(Icons.looks_one)),
                Tab(icon: Icon(Icons.looks_two)),
                Tab(icon: Icon(Icons.looks_3)),
                Tab(icon: Icon(Icons.add_circle)),

              ],
            ),
            title: const Text('Practices Tabs'),
          ),
          body: const TabBarView(
            children: [
              UserData(),
              MyHomePage(title: "Hola Mundo"),
              Icon(Icons.looks_3),
              SplashScreen(),
            ],
          ),
        ),
      ),
    );
  }
}

