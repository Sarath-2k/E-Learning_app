import 'package:flutter/material.dart';
import 'package:one_percent/widgets/second_list.dart';
import 'package:one_percent/widgets/study.dart';
class CheatWidgetScreen extends StatelessWidget {
  final String title;

  final List<String> list = ['What is Java ?','History of Java','Features of Java'];
  CheatWidgetScreen({this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title:Text(title,style: TextStyle(color: Colors.white),),
      ),
      body:SecondList(applets: list,),

    );
  }
}
