import 'package:flutter/material.dart';

class LayoutDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        //column/row
        mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[],
      ),
    );
  }
}

class ConstrainedBoxDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(minHeight: 200, maxWidth: 200),
      child: Container(
        color: Color.fromRGBO(3, 54, 255, 1),
      ),
    );
  }
}

class AspectRatioDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 16 / 9,
      child: Container(
        color: Color.fromRGBO(3, 54, 255, 1),
      ),
    );
  }
}

class StackDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topLeft,
      children: <Widget>[
        SizedBox(
          width: 200,
          height: 300,
          child: Container(
            alignment: Alignment(0, 0),
            decoration: BoxDecoration(
                color: Color.fromRGBO(3, 54, 255, 1),
                borderRadius: BorderRadius.circular(8)),
            child: Icon(Icons.ac_unit, color: Colors.white, size: 32),
          ),
        ),
        SizedBox(
          height: 32,
        ),
        SizedBox(
          width: 100,
          height: 100,
          child: Container(
            decoration: BoxDecoration(
                color: Color.fromRGBO(3, 54, 255, 1),
                shape: BoxShape.circle,
                gradient: RadialGradient(colors: [
                  Color.fromRGBO(7, 102, 255, 1),
                  Color.fromRGBO(3, 54, 255, 1)
                ])
                //   borderRadius: BorderRadius.circular(8)
                ),
            child: Icon(Icons.brightness_2, color: Colors.white, size: 32),
          ),
        ),
        Positioned(
          right: 20,
          top: 20,
          child: Icon(Icons.ac_unit, color: Colors.white, size: 32),
        ),
        Positioned(
          right: 40,
          top: 60,
          child: Icon(Icons.ac_unit, color: Colors.white, size: 32),
        ),
      ],
    );
  }
}

class IconBadge extends StatelessWidget {
  final IconData icon;
  final double size;

  IconBadge(this.icon, {this.size = 32});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Icon(icon, size: size, color: Colors.white),
      width: size + 60,
      height: size + 60,
      color: Color.fromRGBO(3, 54, 255, 1),
    );
  }
}
