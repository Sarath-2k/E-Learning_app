import 'package:flutter/material.dart';

import 'study.dart';
class SecondList extends StatelessWidget {
   SecondList({
    @required this.applets,

  });

  final List<String> applets;

  @override
  Widget build(BuildContext context) {
    return Container(
        child:ListView.builder(
          shrinkWrap: true,
          itemCount: applets.length,
          itemBuilder: (context,index){
            return
              GestureDetector(
                  onTap:(){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Study(title: applets[index],)));
                  },
            child: Container(
                decoration: BoxDecoration(color:Colors.grey[900]
                    ,border:Border(bottom: BorderSide(color: Colors.grey,width: 2.0))),
                child:Row(
                  children:[
                    Expanded(child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Text(applets[index],style: TextStyle(color:Colors.white,fontSize: 20.0)),
                    )),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(Icons.keyboard_arrow_down),
                    )
                  ],),
            ), );
          },
        )
    );
  }
}