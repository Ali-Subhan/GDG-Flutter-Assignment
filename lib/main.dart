import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomeScreen(),
    );
  }
}

class MyHomeScreen extends StatefulWidget {
  @override
  _MyHomeScreenState createState() => _MyHomeScreenState();
}

class _MyHomeScreenState extends State<MyHomeScreen> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: Colors.blueGrey[900],
        leading: Icon(Icons.menu),
        centerTitle: true,
        title: Text('The Quizz App',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          const Card(
            child: Padding(padding: EdgeInsets.all(40.0),child: Text('Quistions will appear here',style:TextStyle(fontSize:30),),)
            ),
          Row(
            //crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              FloatingActionButton.extended(
                  label: Text('True'),
                  icon: Icon(Icons.check_circle_outline),
                  backgroundColor: Colors.green[700],
                  onPressed: () {
                    setState(() {
                      counter++;
                    });
                  }),
              FloatingActionButton.extended(
                label: Text('False'),
                icon: Icon(Icons.highlight_off),
                backgroundColor: Colors.red[700],
                onPressed: () {
                  setState(() {
                    counter++;
                  });
                },
              ),
            ],
          ),

        ],
      ),),
      bottomNavigationBar: BottomAppBar(
        color: Colors.blueGrey[900],
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Icon(Icons.assignment_turned_in,color: Colors.green,size: 40,),
            Icon(Icons.assignment_late,color: Colors.red,size: 40,),
          ],
        ),
      ),
    );
  }
}
