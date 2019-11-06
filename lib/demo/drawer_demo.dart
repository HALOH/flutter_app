import 'package:flutter/material.dart';

class DrawerDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
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
            accountName:
                Text("halo", style: TextStyle(fontWeight: FontWeight.bold)),
            accountEmail: Text("halo.@163.com"),
            currentAccountPicture: CircleAvatar(
              // child: new Image.asset("images/denglun.png"),
              // backgroundImage: NetworkImage("https://img8.zol.com.cn/bbs/upload/23765/23764201.jpg"),
              // backgroundImage: AssetImage("images/denglun.png"),
              backgroundImage: AssetImage("assets/images/denglun.png"),
            ),
            decoration: BoxDecoration(
                color: Colors.red[400],
                image: DecorationImage(
                  image: NetworkImage(
                      "https://resources.ninghao.org/images/childhood-in-a-picture.jpg"),
                  fit: BoxFit.cover,
                  colorFilter: ColorFilter.mode(
                      Colors.red[400].withOpacity(0.4), BlendMode.hardLight),
                )),
          ),
          ListTile(
            title: Text('Message', textAlign: TextAlign.right),
            trailing: Icon(Icons.message, color: Colors.black12, size: 22.0),
            onTap: () => Navigator.pop(context),
          ),
          ListTile(
            title: Text('Favorite', textAlign: TextAlign.right),
            trailing: Icon(Icons.favorite, color: Colors.black12, size: 22.0),
            onTap: () => Navigator.pop(context),
          ),
          ListTile(
            title: Text('Settings', textAlign: TextAlign.right),
            trailing: Icon(Icons.settings, color: Colors.black12, size: 22.0),
            onTap: () => Navigator.pop(context),
          )
        ],
      ),
    );
  }
}
