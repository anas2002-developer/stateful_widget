import 'package:flutter/material.dart';

void main() {
  runApp(AnasApp());
}

class AnasApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: "Anas App",
      home: HomeScreen(),
      theme: ThemeData(
        primarySwatch: Colors.green
      ),
    );
  }
}

class HomeScreen extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {

    return HomeState();

  }
}

class HomeState extends State<HomeScreen> {

  int counter = 0;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("AnasApp (StatefulWidget)"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Counter : $counter"),
            ElevatedButton(onPressed: (){
              setState(() {
                counter++;
              });

                }, child: Text("count ++"))
          ],
        ),
      ),
    );
  }
}