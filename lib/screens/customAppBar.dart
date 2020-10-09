import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  final Size preferredSize;

  CustomAppBar({
    Key key,
    @required GlobalKey<ScaffoldState> scaffoldKey,
  }) : _scaffoldKey = scaffoldKey, preferredSize = Size.fromHeight(50.0), super(key: key);

  final GlobalKey<ScaffoldState> _scaffoldKey;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      brightness: Brightness.light,
      elevation: 10.0,

      backgroundColor: Colors.blueAccent,
      leading: IconButton(
        icon: Icon(Icons.menu),
        onPressed: () => _scaffoldKey.currentState.openDrawer(),
      ),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          GestureDetector(
            onTap: (){
              Navigator.pushNamed(context, '/homePage');
            },
            child: Text(
              'LOGO',
              style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.w400,
                  letterSpacing: 1.5),
            ),
          ),
          Row(
            children: <Widget>[


            ],
          )
        ],
      ),
    );
  }
}
