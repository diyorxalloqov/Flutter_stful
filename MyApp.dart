import 'package:flutter/material.dart';

import 'RasmvaButtonlar.dart';

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.cyan,
        accentColor: Colors.amber,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Flutter Application",
            style: TextStyle(
                fontSize: 25.0,color: Colors.white
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            debugPrint("Floating action button");
          },
          child: Icon(
            Icons.add,
            color: Colors.white,
          ),
        ),
        body: RasmvaButtonlar(),
      ),
    );
  }
}
