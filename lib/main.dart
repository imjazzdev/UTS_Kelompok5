import 'package:UTS_Kelompok5/common_widget/tab_button.dart';
import 'package:UTS_Kelompok5/home/home_view.dart';
import 'package:UTS_Kelompok5/meal_planner/meal_planner_view.dart';
import 'package:UTS_Kelompok5/view/login/profileprep.dart';
import 'package:UTS_Kelompok5/view/login/login_view.dart';
import 'package:UTS_Kelompok5/view/login/signup_view.dart';
import 'package:UTS_Kelompok5/view/main_tab/main_tab_view.dart';
import 'package:UTS_Kelompok5/view/on_boarding/fillerstart.dart';
import 'package:UTS_Kelompok5/view/on_boarding/started_view.dart';
import 'package:flutter/material.dart';

import 'package:UTS_Kelompok5/common/extension.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'LesBeFit',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: TColor.primaryColor1,
        fontFamily: "Poppins"
      ),
    home : const StartedView(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        title: Text(widget.title),
      ),
      body: Center(
        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), //
    );
  }
}
