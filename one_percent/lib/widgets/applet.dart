import 'package:flutter/material.dart';

import 'second_list.dart';
class Applet extends StatelessWidget {

  List<String> applets = ['Applet Calculator','Banner Example','Calculate Factorial using Applet','Change Applet Background color using Scrollbar','Chess Board','Clock Example','Drawing Lines Example','Event Handling','Face Draw','J Radio Button','Large Font Example','Shapes Applet'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        actions:[Padding(padding:EdgeInsets.all(8.0),child:Icon(Icons.search,size:20.0,color:Colors.white))],
        title: Row(
          mainAxisAlignment:MainAxisAlignment.center,
          children: [
            Container(height:50,width:50,child: Image.asset('assets/images/applet.jpeg')),
            SizedBox(width: 4.0,),
            Text('Applets',style:TextStyle(color: Colors.white),),
            SizedBox(width: 4.0,),
            Padding(padding:EdgeInsets.all(8.0),child:Icon(Icons.keyboard_arrow_down,size: 20.0,color: Colors.white,),)

          ],
        ),
      ),
      body: SecondList(applets: applets,),
    );
  }
}

