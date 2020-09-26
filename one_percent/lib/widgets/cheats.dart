import 'package:flutter/material.dart';
import 'package:one_percent/widgets/cheat_widget_screen.dart';

class Cheats extends StatelessWidget {

  List<String> cheat = ['Introduction','Java Setup','Java Basics','Data Types and Variables','Decision Making','Loops','Arrays','Classes','Constructor'];


  @override
  Widget build(BuildContext context) {
    return Container(
          child:ListView.builder(
            shrinkWrap: true,
            itemCount:cheat.length,
            itemBuilder: (context,index) {
              return  GestureDetector(
                  onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => CheatWidgetScreen(title: cheat[index],)));
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical:8.0),
                child: Expanded(
                  child: Container(

                    decoration: BoxDecoration(color:Colors.grey),
                    child:Row(

                     children:[ Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(cheat[index],style:TextStyle(color: Colors.white,fontSize: 20.0,fontWeight: FontWeight.w700),),
                        ),
                      ),
                       Padding(
                         padding: const EdgeInsets.all(8.0),
                         child: Icon(Icons.keyboard_arrow_right,size: 30.0,),
                       ),
                    ],),
                  ),
                ),
              ),
              );
            },
          ),

    );
  }
}
