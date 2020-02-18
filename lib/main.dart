import 'package:flutter/material.dart';
import 'package:staggered_gridview/staggered_gridview.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.deepPurple[900],
      ),
      title: 'Material App',
      home: Scaffold(
        /* appBar: AppBar(
          title: Text('Staggered GridView'),
        ), */
        body: Example01(),
        //body: myCustomLayout(),
      ),
    );
  }
}
