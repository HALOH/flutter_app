import 'package:flutter/material.dart';

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
      length: 3,
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
              Tab(icon: Icon(Icons.local_bar))
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            Icon(Icons.local_activity, size: 128.0, color: Colors.black12),
            Icon(Icons.local_florist, size: 128.0, color: Colors.black12),
            Icon(Icons.local_bar, size: 128.0, color: Colors.black12)
          ],
        ),
        drawer: Drawer(
            child: ListView(
                padding: EdgeInsets.zero,
                children: <Widget>[
                    // DrawerHeader(
                    //     child: Text("header".toUpperCase()),
                    //     decoration: BoxDecoration(
                    //         color: Colors.grey[100]
                    //     ),
                    // ),
                    UserAccountsDrawerHeader(
                        accountName: Text("halo",style: TextStyle(fontWeight: FontWeight.bold)),
                        accountEmail: Text("halo.@163.com"),
                        currentAccountPicture: CircleAvatar(
                            backgroundImage: NetworkImage("https://img8.zol.com.cn/bbs/upload/23765/23764201.jpg"),
                            // backgroundImage: AssetImage("../images/denglun.png"),
                        ),
                        decoration: BoxDecoration(
                            color: Colors.red[400],
                            image: DecorationImage(
                                image: NetworkImage("https://resources.ninghao.org/images/childhood-in-a-picture.jpg"),
                                fit: BoxFit.cover,
                                colorFilter: ColorFilter.mode(
                                    Colors.red[400].withOpacity(0.4),
                                    BlendMode.hardLight
                                ),
                            )
                        ),
                    ),
                    ListTile(
                        title: Text('Message',textAlign: TextAlign.right),
                        trailing: Icon(Icons.message,color:Colors.black12,size:22.0),
                        onTap: ()=>Navigator.pop(context),
                    ),
                    ListTile(
                        title: Text('Favorite',textAlign: TextAlign.right),
                        trailing: Icon(Icons.favorite,color:Colors.black12,size:22.0),
                        onTap: ()=>Navigator.pop(context),
                    ),
                    ListTile(
                        title: Text('Settings',textAlign: TextAlign.right),
                        trailing: Icon(Icons.settings,color:Colors.black12,size:22.0),
                        onTap: ()=>Navigator.pop(context),
                    )
                ],
            ),
        ),
      ),
    );
  }
}
