import 'package:flutter/material.dart';
import './model/post.dart';

void main() => runApp(App());

// StatefulWidget 有需要修改的
// StatelessWidget  不需要修改
class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
      theme: ThemeData(primarySwatch: Colors.red),
    );
  }
}

class Home extends StatelessWidget {
  Widget _listItemBuilder(BuildContext context, int index) {
    return Container(
      color: Colors.white,
      margin: EdgeInsets.all(8),
      child: Column(
        children: <Widget>[
          Image.network(posts[index].imageUrl),
          SizedBox(height: 16),
          Text(
              posts[index].title,
              style: Theme.of(context).textTheme.title,
            ),
            Text(
              posts[index].author,
              style: Theme.of(context).textTheme.subhead,
            ),
            SizedBox(height: 16)
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: Text('伟大的app'),
        elevation: 10, //顶部bar阴影
      ),
      body: ListView.builder(
        itemCount: posts.length,
        itemBuilder: _listItemBuilder,
      ),
    );
  }
}

class Hello extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'hello',
        textDirection: TextDirection.ltr,
        style: TextStyle(
            fontSize: 50, fontWeight: FontWeight.bold, color: Colors.black87),
      ),
    );
    ;
  }
}
