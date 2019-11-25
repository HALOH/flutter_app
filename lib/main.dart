import 'package:flutter/material.dart';
import './demo/drawer_demo.dart';
import './demo/bootom_navigation_bar_demo.dart';
import './demo/listview_demo.dart';
import './demo/basic_demo.dart';
import './demo/layout_demo.dart';
import './demo/view_demo.dart';
import './demo/sliver_demo.dart';

void main() => runApp(App());

// StatefulWidget 有需要修改的
// StatelessWidget  不需要修改 
class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
      theme: ThemeData(
          primarySwatch: Colors.red,
          highlightColor: Color.fromRGBO(255, 255, 255, 0.5),
          splashColor: Colors.white70
        ),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
        //   leading: IconButton(
        //     icon: Icon(Icons.menu),
        //     tooltip: "Navigration",
        //     onPressed: () => debugPrint("pressed"),
        //   ),
          title: Text('FLUTTER'),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              tooltip: "Navigration",
              onPressed: () => debugPrint("searched"),
            ),
          ],
          elevation: 10, //顶部bar阴影
          bottom: TabBar(
            unselectedLabelColor: Colors.black38,
            indicatorColor: Colors.black54,
            indicatorSize: TabBarIndicatorSize.label,
            indicatorWeight: 2.0,
            tabs: <Widget>[
              Tab(icon: Icon(Icons.local_activity)),
              Tab(icon: Icon(Icons.local_florist)),
              Tab(icon: Icon(Icons.local_bar)),
              Tab(icon: Icon(Icons.view_quilt)),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            // Icon(Icons.local_activity, size: 128.0, color: Colors.black12),
            ListViewDemo(),
            // Icon(Icons.local_florist, size: 128.0, color: Colors.black12),
            BasicDemo(),
            LayoutDemo(),
            SliverDemo()
          ],
        ),
        drawer: DrawerDemo(),
        bottomNavigationBar: BottomNavigationBarDemo(),
      ),
    );
  }
}
