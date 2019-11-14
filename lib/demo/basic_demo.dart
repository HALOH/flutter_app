import 'package:flutter/material.dart';

class BasicDemo extends StatelessWidget {
    @override
  Widget build(BuildContext context) {
    return ContainerDemo();
  }
}

class ContainerDemo extends StatelessWidget{
    @override
  Widget build(BuildContext context) {
    return Container(
        // color: Colors.grey[300],
        decoration: BoxDecoration(
            image: DecorationImage(
                image:NetworkImage("https://resources.ninghao.org/images/say-hello-to-barry.jpg"),
                alignment: Alignment.topCenter,
                // repeat: ImageRepeat.repeatY,
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(
                    Colors.indigoAccent[400].withOpacity(0.5),
                    BlendMode.hardLight
                )
            )
        ),
        child: Row(
            mainAxisAlignment:MainAxisAlignment.center,
            children: <Widget>[
                Container(
                    child: Icon(Icons.pool,size:32,color:Colors.white),
                    // color: Color.fromRGBO(3, 54, 255, 1.0),
                    padding: EdgeInsets.all(16),
                    margin: EdgeInsets.all(8),
                    width: 90,
                    height: 90,
                    decoration: BoxDecoration(
                        // color: Colors.red,
                        color: Color.fromRGBO(3, 54, 255, 0.7),
                        // border: Border(
                        //     top: BorderSide(
                        //         color: Colors.red,
                        //         width: 3.0,
                        //         style: BorderStyle.solid
                        //     ),
                        //     bottom: BorderSide(
                        //         color: Colors.red,
                        //         width: 3.0,
                        //         style: BorderStyle.solid
                        //     )
                        // )
                        border:Border.all(
                            color: Colors.red,
                            width: 3.0,
                            style: BorderStyle.solid
                        ),
                        // borderRadius: BorderRadius.only(
                        //     topLeft: Radius.circular(64),
                        //     bottomLeft: Radius.circular(64)
                        // )
                        // borderRadius: BorderRadius.circular(16),
                        boxShadow: [
                            BoxShadow(
                                offset: Offset(0, 16),
                                color: Color.fromRGBO(16, 20, 188, 1),
                                blurRadius: 25.0,
                                spreadRadius: -9
                            )
                        ],
                        shape: BoxShape.circle,
                        // gradient: RadialGradient(//镜像渐变
                        //     colors: [
                        //         Color.fromRGBO(7, 102, 255, 1),
                        //         Color.fromRGBO(3, 28, 128, 1)
                        //     ]
                        // )
                        gradient: LinearGradient(//线性渐变
                            colors: [
                                Color.fromRGBO(7, 102, 255, 1),
                                Color.fromRGBO(3, 28, 128, 1)
                            ],
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter
                        ),
                    ),
                )               
            ],
        ),
    );
  }
}

class RichTextDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
          text: "halo",
          style: TextStyle(
            color: Colors.deepPurpleAccent,
            fontSize: 34.0,
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.w100,
          ),
          children: [
            TextSpan(
                text: ".net",
                style: TextStyle(fontSize: 17.0, color: Colors.grey))
          ]),
    );
  }
}

class TestDemo extends StatelessWidget {
  final TextStyle _textStyle = TextStyle(
    fontSize: 16.0,
  );
  final String _author = '李白';
  final String _title = '将进酒';
  @override
  Widget build(BuildContext context) {
    return Text(
      "《$_title》--$_author。君不见黄河之水天上来，奔流到海不复回。君不见高堂明镜悲白发，朝如青丝暮成雪。人生得意须尽欢，莫使金樽空对月。天生我材必有用，千金散尽还复来。烹羊宰牛且为乐，会须一饮三百杯。",
      textAlign: TextAlign.left,
      style: _textStyle,
      maxLines: 3,
      overflow: TextOverflow.ellipsis,
    );
  }
}
