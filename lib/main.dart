import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    home: new MyApp(),
  ));
}

class MyApp extends StatefulWidget {

  @override
  _State createState() => new _State();
}

class _State extends State<MyApp> {

  Future _showAlert(BuildContext context, String message) async {
    return showDialog(
        context: context,
        builder: (BuildContext context) => new AlertDialog(
          title: new Text(message),
          actions: <Widget>[
            new FlatButton(onPressed: ()=> Navigator.pop(context), child: new Text('ok'))
          ]
        ) );
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(

      appBar: new AppBar(
        title: new Text('Name here'),
      ),


      body: new Container(
        padding: new EdgeInsets.all(32.0),
        child: new Column(
          children: <Widget>[
            new Text('Hi'),
            new RaisedButton(onPressed: () => _showAlert(context, 'Do you like flutter? i do!'),
              child: new Text('click me') ,)
          ],
        ),
      ),

    );
  }


}