import 'package:falf/theme.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class About extends StatefulWidget {
  @override
  _AboutState createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: mainColor,
        title: Text("About Us"),
        centerTitle: true,
      ),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('The Future Africa Leaders Foundation is an initiative aimed at exploring and expanding the leadership potentials in Africa and for Africa. It is for identifying, celebrating and supporting young Africans who have demonstrated exemplary leadership by impacting their generation positively through education, youth empowerment and mentoring through other projects aimed at building young people and preparing them for a positive future.',),
          ),
         Container(
           child: Padding(
             padding: const EdgeInsets.all(8.0),
             child: Column(
               children: <Widget>[
                 Card(
                   color: mainColor,
                   child: Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: Column(
                       children: <Widget>[
                         Icon(Icons.language, color: Colors.white,),
                         Text("Our Mission",
                           style: TextStyle(
                             fontSize: MediaQuery.of(context).size.height/20,
                           ),
                         ),
                         Padding(
                           padding: const EdgeInsets.all(8.0),
                           child: Text("To identify, explore, celebrate, train and support African youths who have demonstrated exemplary leadership qualities in various field of endeavors.",
                             style: TextStyle(
                               color: Colors.white,
                             ),
                           ),
                         ),
                       ],
                     ),
                   ),
                 ),
                 Card(
                   color: mainColor,
                   child: Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: Column(
                       children: <Widget>[
                         Icon(Icons.visibility, color: Colors.white,),
                         Text("Our Mission",
                           style: TextStyle(
                             fontSize: MediaQuery.of(context).size.height/20,
                           ),
                         ),
                         Padding(
                           padding: const EdgeInsets.all(10.0),
                           child: Text("To raise financial, political, technological, intellectual and economic giants who are driven by the challenges in Africa to proffer sustainable solutions.",
                             style: TextStyle(
                               color: Colors.white,
                             ),
                           ),
                         ),
                       ],
                     ),
                   ),
                 ),
                 Card(
                   color: mainColor,
                   child: Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: Column(

                       children: <Widget>[
                         Icon(Icons.access_time, color: Colors.white,),
                         Text("Our Goal",
                           style: TextStyle(
                             fontSize: MediaQuery.of(context).size.height/20,
                           ),
                         ),
                         Padding(
                           padding: const EdgeInsets.all(8.0),
                           child: Text("To impact African youths all around the world through our mentorship programs that enable the youths to tackle prevalent challenges in Africa.",
                             style: TextStyle(
                               color: Colors.white,
                             ),
                           ),
                         ),
                       ],
                     ),
                   ),
                 )

               ],
             ),
           ),
         ),

         Center(
           child:  Text("Contact Information",
             style: TextStyle(
                 fontSize: MediaQuery.of(context).size.height/20,
               color: mainColor,
             ),
           ),
         ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text("You can contact us any way that is convenient for you. We are available 24/7 via fax or email."),
          ),
          Icon(Icons.email, color: mainColor),
          Center(child: Text("info@futureafricaleadersfoundation.org",
          style: TextStyle(
            color: mainColor,
          ),
          ),

          ),
          Icon(Icons.phone, color: mainColor),
          Center(child: Text("+234 708 645 7899",
            style: TextStyle(
              color: mainColor,
            ),
          ),

          ),

        ],
      ),
    );
  }
}
