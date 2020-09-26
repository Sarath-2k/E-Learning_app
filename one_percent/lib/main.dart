
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:one_percent/widgets/compiler.dart';
import 'package:one_percent/widgets/info.dart';
import 'package:one_percent/widgets/program.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

import 'chapter.dart';
// import 'widgets/applet.dart';
import 'widgets/cheats.dart';
import 'widgets/first_list.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int selectedPos = 0;

  int _page = 0;
  GlobalKey _bottomNavigationKey = GlobalKey();

  List navigationList = [
    Index(),
    CompilerPage(),
    Program(),
    Cheats(),
    InforScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        key: _bottomNavigationKey,
        index: 0,
        height: 50.0,
        items: <Widget>[
          Icon(Icons.add, size: 30, color: Colors.redAccent),
          Icon(Icons.list, size: 30, color: Colors.redAccent),
          Icon(Icons.compare_arrows, size: 30, color: Colors.redAccent),
          Icon(Icons.call_split, size: 30, color: Colors.redAccent),
          Icon(Icons.info, size: 30, color: Colors.redAccent),
        ],
        color: Colors.blueGrey,
        buttonBackgroundColor: Colors.blueGrey,
        backgroundColor: Colors.transparent,
        animationCurve: Curves.easeInOut,
        animationDuration: Duration(milliseconds: 600),
        onTap: (index) {
          setState(() {
            _page = index;
          });
        },
      ),
      drawer: Drawer(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            children: [
              SizedBox(
                height: 50,
              ),
              CircleAvatar(
                radius: 70.0,
              ),
              SizedBox(
                height: 50,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: ListTile(
                  title: Text("Settings",
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.grey[400],
                      )),
                  onTap: () {},
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: ListTile(
                  title: Text("Rate Us",
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.grey[400],
                      )),
                  onTap: () {},
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: ListTile(
                  title: Text("Follow us",
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.grey[400],
                      )),
                  onTap: () {},
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: ListTile(
                  title: Text("More Course",
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.grey[400],
                      )),
                  onTap: () {},
                ),
              ),
              SizedBox(height: 80.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CircleAvatar(radius: 20),
                  CircleAvatar(radius: 20),
                  CircleAvatar(radius: 20),
                ],
              )
            ],
          ),
        ),
      ),
      appBar: AppBar(
        toolbarHeight: 100,
        title: Text(
          'Java',
          style: TextStyle(color: Colors.white, fontSize: 30),
        ),
        actions: [
          CircularPercentIndicator(
            radius: 60.0,
            lineWidth: 3.0,
            percent: 0.0,
            center: Text('0%',
                style: TextStyle(fontSize: 15.0, color: Colors.blueGrey)),
            progressColor: Colors.grey,
          ),
          SizedBox(
            width: 30,
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 20),
            height: 10,
            child: RaisedButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40)),
              child: Text(
                'TRY PRO',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
              onPressed: () {},
              color: Colors.orange,
            ),
          ),
        ],
      ),
      body: navigationList[_page],
    );
  }
}

class Index extends StatelessWidget {
  final List<Chapter> chapter = [
    Chapter('Your first program', true, 0, 3,'free'),
    Chapter('Storage and basic calculation', false, 0, 6,'free'),
    
  ];

  final List<Chapter> proChapters = [
    Chapter('Decision making', false, 0, 3,"Pro"),
    Chapter('Repeating a task', false, 0, 6,"Pro"),
    Chapter('Storing similar values', false, 0, 4,"Pro"),
    Chapter('Giving input to a program', false, 0, 2,"Pro"),
    Chapter('Rebuilding our first program', false, 0, 4,"Pro"),
    Chapter('What is object oriented programing', false, 0, 4,"Pro"),
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: 
      Container(
        child: Column(
          children: [
            firstList(chapter: chapter),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(Icons.shop),
                ),
                SizedBox(width: 5.0),
                Text(
                  'PRO',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w400),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Expanded(
                        child: Container(
                            width: 350, color: Colors.grey, height: 1.0)),
                  ),
                )
              ],
            ),
            Container(
              child: firstList(
                chapter: proChapters,
              ),
            )
          ],
        ),
      ),
      scrollDirection: Axis.vertical,
    );
  }
}
