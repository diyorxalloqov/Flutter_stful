import 'package:flutter/material.dart';

import 'RasmvaButtonlar.dart';

import 'MyApp.dart';

import 'dart:io';

void main(){
  //var myApp = new MyApp();
  //runApp(MyApp());
  runApp(Myapp());
}

class Myapp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      title: 'Flutter Hello',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {

  int sanoq = 0;

  @override
  State<StatefulWidget> createState() {
    return MyHomePageState();
  }
}

class MyHomePageState extends State<MyHomePage>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Application"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            sanoqniOrttir();
          });
        },
        child: Icon(
            Icons.add
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    _sanoqQiymatiniOrttir();
                  });
                },
                child: Text(
                  "Orttir",
                ),
      ),
            Text('Buttonga bosilish soni : '),
            Text(
              '${widget.sanoq}',
             style: Theme.of(context).textTheme.displayMedium /*copyWith(
               color: widget.sanoq <= 0 ? Colors.red : Colors.green),*/
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _sanoqQiymatiniKamaytir();
                });
              },
              child: Text(
                "Kamaytir",
              ),
            ),
          ],
        ),
      ),
    );
  }
  void sanoqniOrttir(){
    widget.sanoq++;
    debugPrint('${widget.sanoq}');
  }

  void _sanoqQiymatiniOrttir(){
    widget.sanoq++;
  }

  void _sanoqQiymatiniKamaytir(){
    widget.sanoq--;
  }
}
