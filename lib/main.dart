import 'package:flutter/material.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String _v="dfsfsf";
  void onPressed(String v){
    setState(() {
      _v=v;
    });
  }
  int a=0;
  void add(){
    setState(() {
      a++;
    });
  }
  void sub(){
    setState(() {
      a--;
    });
  }
  @override
  Widget build(BuildContext context) =>Scaffold(

  appBar: AppBar(),
    body: Center(
      child: Container(
         child: Column(
           children: [
             Text(_v),
             ElevatedButton(onPressed: () => onPressed("dfsgsgsfgsd") , child:Text("Click") ),
             Text("Value=${a}"),
             IconButton(onPressed: add, icon: Icon(Icons.add)),
             IconButton(onPressed: sub, icon: Icon(Icons.remove)),
           ],
         ),
      ),
    ),
  );
}