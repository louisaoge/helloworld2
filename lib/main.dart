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

  String _value ='';

  Future _selectDate() async  {
    DateTime picked = await showDatePicker(
      context: context,
      initialDate: new DateTime.now(),
      firstDate: new DateTime(2018),
      lastDate: new DateTime(2020)
  );
    if (picked != null) setState(() => _value = picked.toString());

}


 @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Home'),
      ),
      body: new Container(
        padding: new EdgeInsets.all(32.0),
        child: new Center(
        child: new Column(
          children: <Widget>[
            new Text(_value),
            new RaisedButton(onPressed: _selectDate, child: new Text('click me'),)

          ],
        ),
      ),
      ),
    );
  }
}