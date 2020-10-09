import 'package:flutter/material.dart';

import 'homepage.dart';

class CustomSidebar extends StatelessWidget {
  final String semanticLabel;
  final String currentPage;

  const CustomSidebar({Key key, this.semanticLabel, this.currentPage})
      : super(key: key);

  ListTile sideNavList({IconData icon, String title}) {
    return ListTile(
      leading: Icon(
        icon,
        color: Colors.white,
      ),
      title: Text(
        title,
        style: TextStyle(
            color: Colors.white, fontSize: 14.0, fontWeight: FontWeight.w400),
      ),
      onTap: () {
        // Update the state of the app
        // ...
        // Then close the drawer
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    assert(debugCheckHasMaterialLocalizations(context));
    String label = semanticLabel;
    switch (Theme.of(context).platform) {
      case TargetPlatform.iOS:
        label = semanticLabel;
        break;
      case TargetPlatform.android:
      case TargetPlatform.fuchsia:
        label = semanticLabel ?? MaterialLocalizations.of(context)?.drawerLabel;
    }
    return Semantics(
        scopesRoute: false,
        namesRoute: true,
        explicitChildNodes: true,
        label: label,
        child: ConstrainedBox(
            constraints: const BoxConstraints.expand(width: 250.0),
            child: Material(
              color: Colors.blueAccent,

              elevation: 16.0,

              // Add a ListView to the drawer. This ensures the user can scroll
              // through the options in the drawer if there isn't enough vertical
              // space to fit everything.
              child: ListView(
                // Important: Remove any padding from the ListView.
                padding: EdgeInsets.zero,
                children: <Widget>[
                  DrawerHeader(
                    child: Center(
                      child: Container(
                        child: Text(
                          "LOGO",
                          style: TextStyle(color: Colors.white, fontSize: 28),
                        ),
                      ),
                    ),
                  ),
                  ListTile(

                    leading: Icon(
                      Icons.home,
                      color: Colors.white,
                    ),
                    title: Text(
                      "HOME",
                      style: TextStyle(
                          color: Colors.white, fontSize: 14.0, fontWeight: FontWeight.w400),
                    ),
                    onTap: () {
                      Navigator.of(context).pop();
                      if(this.currentPage == "HOME") return;
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => HomePage()));
                    },
                  ),
                  FlatButton(
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder:
                          (context) => HomePage()));

                    },
                    child: sideNavList(
                        icon: Icons.info,
                        title: 'ABOUT'
                        ,),
                  ),
                  FlatButton(
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder:
                          (context) => HomePage()));
                    },
                    child: sideNavList(
                        icon: Icons.tv,
                        title: 'FALA TV'),
                  ),
                  FlatButton(
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder:
                          (context) => HomePage()));
                    },
                    child: sideNavList(
                        icon: Icons.people,
                        title: 'PARTNERS'),
                  ),

                ],
              ),
            )));
  }
}
