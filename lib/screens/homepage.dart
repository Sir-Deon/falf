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

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  int _currentIndex=0;
  final CarouselController _controller = CarouselController();




  @override
  void initState() {
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: CustomAppBar(scaffoldKey: _scaffoldKey,),
      drawer: CustomSidebar(),
      body: ListView(
    children: <Widget>[
      CarouselSlider(
        options: CarouselOptions(
          autoPlay: true,
          aspectRatio: 2.0,
          enlargeCenterPage: true,
        ),
        items: heroImageSliders,
      ),
    Text("Impact Reports"),
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
                  Text("INTERNATION YOUTH DAY IN KENYA"),
                  RaisedButton(
                    onPressed: (){

                    },
                    child: Text("Read More"),
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
                  Text("INTERNATION YOUTH DAY IN KENYA"),
                  RaisedButton(
                    onPressed: (){

                    },
                    child: Text("Read More"),
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
                  Text("INTERNATION YOUTH DAY IN KENYA"),
                  RaisedButton(
                    onPressed: (){

                    },
                    child: Text("Read More"),
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
      Text("FALA STAR WINNERS"),
      Stack(
        children: <Widget>[
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
                    child: Icon(Icons.arrow_back_ios,
                    color: Colors.white,),
                  ),
                ),
                Flexible(
                  child: GestureDetector(
                    onTap: () => _controller.nextPage(),
                    child: Icon(Icons.arrow_forward_ios,
                      color: Colors.white,),                  ),
                ),

              ],
            ),
          )
          ]
      ),

      Text("Contact us"),
      Container(
        color: Colors.purple,
        child: Column(
          children: <Widget>[
            Row(
mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(Icons.location_on),
                Text("21/23 Ize Iyamu Street, Off Billings Way, Oregun,",
                style: TextStyle(color: Colors.white),)
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,

              children: <Widget>[
                Icon(Icons.pin_drop),
                Text("Ikeja, Lagos, Nigeria",
                    style: TextStyle(color: Colors.white))
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,

              children: <Widget>[
                Icon(Icons.email),
                Text("info@futureafricaleadersfoundation.org",
                    style: TextStyle(color: Colors.white))
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,

              children: <Widget>[
                Icon(Icons.call),
                Text("+234 708 645 7899",
                    style: TextStyle(color: Colors.white))
              ],
            )
          ],
        ),
      )

    ]
      )



    );
  }
}

final List<Widget> heroImageSliders = imgList.map((item) => Container(
  child: Container(
    margin: EdgeInsets.all(5.0),
    child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(5.0)),
        child: Stack(
          children: <Widget>[
            Image.asset(item, fit: BoxFit.cover, width: 1000.0),

          ],
        )
    ),
  ),
)).toList();

final List<Widget> imageSliders = imgList.map((item) => Container(
  child: Container(
    color: Colors.blueAccent,
    margin: EdgeInsets.all(5.0),
    child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(5.0)),
        child: Column(
          children: <Widget>[
            Image.asset(item, fit: BoxFit.cover, width: 1000.0),
            Text("2019 FALA STAR WINNER")

          ],
        )
    ),
  ),
)).toList();

