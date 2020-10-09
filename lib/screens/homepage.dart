import 'package:carousel_slider/carousel_slider.dart';
import 'package:carousel_slider/carousel_options.dart';
import 'package:falf/screens/customAppBar.dart';
import 'package:falf/screens/customSidebar.dart';
import 'package:flutter/material.dart';

final List<String> imgList = [
  'images/kenya.jpeg',
  'images/malawi.jpg',
  'images/nigeria.jpeg',
];

final List<String> years = [
  '2019',
  '2018',
  '2017'
];

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  int _currentIndex = 0;
  final CarouselController _controller = CarouselController();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _scaffoldKey,
        appBar: CustomAppBar(
          scaffoldKey: _scaffoldKey,
        ),
        drawer: CustomSidebar(currentPage: 'HOME',),
        body: ListView(children: <Widget>[
          CarouselSlider(
            options: CarouselOptions(
              autoPlay: true,
              aspectRatio: 2.0,
              enlargeCenterPage: true,
            ),
            items: heroImageSliders,
          ),
          Container(
              margin: EdgeInsets.only(top: 25.0, bottom: 5.0, left: 5.0),
              child: Text(
                "Impact Reports",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Colors.grey.shade700),
              )),
          Row(
            children: <Widget>[
              Expanded(
                flex: 1,
                child: Card(
                  child: Column(
                    children: <Widget>[
                      Image(
                        image: AssetImage("images/kenya.jpeg"),
                        height: 150,
                        fit: BoxFit.cover,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "INTERNATIONAL YOUTH DAY IN KENYA",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.purpleAccent,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      RaisedButton(
                        color: Colors.blueAccent.shade200,
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(40))),
                        onPressed: () {},
                        child: Text(
                          "Read More",
                          style: TextStyle(color: Colors.white),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Card(
                  child: Column(
                    children: <Widget>[
                      Image(
                        image: AssetImage("images/malawi.jpg"),
                        height: 150,
                        fit: BoxFit.cover,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "IMPACT REPORT FROM MALAWI",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.purpleAccent,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      RaisedButton(
                        color: Colors.blueAccent.shade200,
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(40))),
                        onPressed: () {},
                        child: Text(
                          "Read More",
                          style: TextStyle(color: Colors.white),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
          Row(
            children: <Widget>[
              Expanded(
                flex: 1,
                child: Card(
                  child: Column(
                    children: <Widget>[
                      Image(
                        image: AssetImage("images/nigeria.jpeg"),
                        height: 150,
                        fit: BoxFit.cover,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "IMPACT REPORT FROM CALABAR, NIGERIA",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.purpleAccent,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      RaisedButton(
                        color: Colors.blueAccent.shade200,
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(40))),
                        onPressed: () {},
                        child: Text(
                          "Read More",
                          style: TextStyle(color: Colors.white),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(),
              )
            ],
          ),
          Container(
              margin: EdgeInsets.only(top: 25.0, bottom: 5.0, left: 5.0),
              child: Text(
                "FALA STAR WINNERS",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Colors.grey.shade700),
              )),
          Stack(children: <Widget>[
            CarouselSlider(
              items: imageSliders,
              options: CarouselOptions(enlargeCenterPage: true, height: 300),
              carouselController: _controller,
            ),
            Container(
              margin: EdgeInsets.only(top: 100),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Flexible(
                    child: GestureDetector(
                      onTap: () => _controller.previousPage(),
                      child: Icon(
                        Icons.arrow_back_ios,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Flexible(
                    child: GestureDetector(
                      onTap: () => _controller.nextPage(),
                      child: Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            )
          ]),
          Container(
              margin: EdgeInsets.only(top: 25.0, bottom: 5.0, left: 5.0),
              child: Text(
                "Contact Info",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Colors.grey.shade700),
              )),
          Container(
            color: Colors.purple.shade600,
            child: Column(
              children: <Widget>[
                ListTile(
                  leading: Icon(Icons.location_on, color: Colors.white,),
                  title:  Text(
                    "21/23 Ize Iyamu Street, Off Billings Way, Oregun,",
                    style: TextStyle(color: Colors.white),
                  ),

                ),

                ListTile(
                  leading: Icon(Icons.pin_drop, color: Colors.white,),
                  title:  Text(
                    "Ikeja, Lagos, Nigeria",
                    style: TextStyle(color: Colors.white),
                  ),

                ),
                ListTile(
                  leading: Icon(Icons.email, color: Colors.white,),
                  title:  Text(
                    "info@futureafricaleadersfoundation.org",
                    style: TextStyle(color: Colors.white),
                  ),

                ),
                ListTile(
                  leading: Icon(Icons.call, color: Colors.white,),
                  title:  Text(
                    "+234 708 645 7899",
                    style: TextStyle(color: Colors.white),
                  ),

                ),
              ],
            ),
          )
        ]));
  }
}

final List<Widget> heroImageSliders = imgList
    .map((item) => Container(
          child: Container(
            margin: EdgeInsets.all(5.0),
            child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(5.0)),
                child: Stack(
                  children: <Widget>[
                    Image.asset(item, fit: BoxFit.cover, width: 1000.0),
                  ],
                )),
          ),
        ))
    .toList();

final List<Widget> imageSliders = imgList
    .map((item) => Container(
          child: Container(
            color: Colors.blueAccent.shade200,
            margin: EdgeInsets.all(5.0),
            child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(5.0)),
                child: Column(
                  children: <Widget>[
                    Image.asset(item, fit: BoxFit.cover, width: 1000.0),
                    Container(
                      padding: EdgeInsets.only(top: 10.0),
                        child: Text("${years.elementAt(imgList.indexOf(item))
                        } FALA STAR WINNER",
                        style: TextStyle(color: Colors.white, fontWeight:
                        FontWeight.bold),))
                  ],
                )),
          ),
        ))
    .toList();
