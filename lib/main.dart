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
List<BottomNavigationBarItem> _items;
String _value ='';
int _index = 0;

  @override
  void initState() {
    _items = new List();
    _items.add(new BottomNavigationBarItem(icon: new Icon(Icons.people), title: new Text('people')));
    _items.add(new BottomNavigationBarItem(icon: new Icon(Icons.weekend), title: new Text('weekend')));
    _items.add(new BottomNavigationBarItem(icon: new Icon(Icons.message), title: new Text('message')));

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
            new Text(_value)
          ],
        ),
      ),
      bottomNavigationBar: new BottomNavigationBar(
          items: _items,
          fixedColor: Colors.green,
          backgroundColor: Colors.grey,
          currentIndex: _index,
          onTap: (int item){
            setState(() {
              _index = item;
              _value = "Current state = ${_index.toString()}";
            });
          },)

    );
  }


}