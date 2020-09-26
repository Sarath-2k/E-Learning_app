import 'package:flutter/material.dart';
class Study extends StatelessWidget {

  final String title;

  const Study({ this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.black,
        title:Text(title,style: TextStyle(color: Colors.white),),
      ),
      body:Column(
        children: [
           Padding(
             padding: const EdgeInsets.all(8.0),
             child: Container(decoration: BoxDecoration(color: Colors.red),child: Text('Java technology is both a programming language and a platform',
                style: TextStyle(color: Colors.white,fontStyle: FontStyle.italic),

              ),),
           ),

          Container(
            padding: EdgeInsets.symmetric(horizontal: 8.0,vertical: 4.0),
            child: Text(
              'Study material'
            ),
          ),
        ],
      ),
    );
  }
}
