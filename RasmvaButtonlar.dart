import 'package:flutter/material.dart';


class RasmvaButtonlar extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Column(
      children: <Widget>[
        Column(
          children: <Widget>[
            Text(
              "Rasmli sahifa",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30.0,
                backgroundColor: Colors.grey,
              ),
            ),
          ],
        ),
        IntrinsicHeight(
          child: Row(
            children: <Widget>[
              Container(
                margin: EdgeInsets.all(4.0),
                padding: EdgeInsets.all(4.0),
                color: Colors.redAccent,
                height: 125.0,
                width: 125.0,
                child: Column(
                  children: <Widget>[
                    Image.asset("assets/images/image.jpg"),
                    Text("Desktop"),
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.blue,
                  margin: EdgeInsets.all(4.0),
                  width: 125.0,
                  height: 125.0,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      CircleAvatar(
                        backgroundImage: NetworkImage(
                            "https://placepic.ru/wp-content/uploads/2018/11/prazdnovanie-novogo-goda-kartinka.orig_.jpg"),
                        radius: 40.0,
                      ),
                      //Text("Christmas"),
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(4.0),
                color: Colors.blueAccent,
                height: 125.0,
                width: 125.0,
                child: Column(
                  children: <Widget>[
                    FadeInImage.assetNetwork(
                        placeholder: 'assets/images/loading.gif',
                        image:
                        'https://placepic.ru/wp-content/uploads/2018/11/prazdnovanie-novogo-goda-kartinka.orig_.jpg'),
                    Text("Snow"),
                  ],
                ),
              ),
            ],
          ),
        ),
        IntrinsicHeight(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Expanded(
                child: Container(
                  margin: EdgeInsets.all(4.0),
                  color: Colors.black,
                  child: Column(
                    children: <Widget>[
                      Expanded(
                        child: Placeholder(
                          color: Colors.red,
                          strokeWidth: 2,
                        ),
                      ),
                      Text(
                        "PlaceHolder",
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(4.0),
                color: Colors.blueAccent,
                height: 125.0,
                width: 125.0,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    FlutterLogo(
                      size: 80.0,
                      //color: Colors.red,
                    ),
                    Text("Flutter"),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.all(4.0),
                color: Colors.black,
                height: 125.0,
                width: 125.0,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    FlutterLogo(
                      size: 80.0,
                      style: FlutterLogoStyle.horizontal,
                      textColor: Colors.white,
                    ),
                    Text("Snow"),
                  ],
                ),
              ),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 50.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              ElevatedButton(
                onPressed: () {
                  kopfunction();
                },
                child: Text("Elevated Buttun bir"),
              ),
              TextButton(
                onPressed: () {
                  debugPrint("Elevated Buttun bir bosildi");
                },
                child: Text("Text Button bir"),
              ),
              OutlinedButton(
                onPressed: () {
                  debugPrint("Outlined Buttun bir bosildi");
                },
                child: Text("Outlined button bir"),
              ),
              // IconButton(
              //     onPressed: () {
              //       debugPrint("Icon Buttun bir bosildi");
              //     },
              //     icon: Icon(Icons.add_circle_outline, size: 32, 7)),
            ],
          ),
        ),
      ],
    );
  }
}


void kopfunction() {
  debugPrint("Elevated Button bir bosildi");
  debugPrint("Elevated Button bir bosildi");
  debugPrint("Elevated Button bir bosildi");
  debugPrint("Elevated Button bir bosildi");
}
