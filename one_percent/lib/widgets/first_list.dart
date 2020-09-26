import 'dart:ui';

import 'package:flutter/material.dart';

import '../chapter.dart';

class firstList extends StatelessWidget {
  const firstList({
    @required this.chapter,
  });

  final List<Chapter> chapter;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 14.0),
            child: Expanded(
                child: 
                Container(
                      margin:EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        borderRadius:BorderRadius.circular(20),
                        color:Colors.red
                      ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ExpansionTile(
                      tilePadding: EdgeInsets.symmetric(vertical:5,horizontal:15),
              initiallyExpanded: chapter[index].expanded,
              title: Text(chapter[index].title),
              childrenPadding: EdgeInsets.all(20),
              children: [
                    Container(
                      margin:EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        borderRadius:BorderRadius.circular(20),
                      ),
                    ),
              ],
            ),
                  ),
                )
                
                //   child:Container(
                //   margin:EdgeInsets.fromLTRB(10, 5, 10, 5),
                //   decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
                //   color: Colors.black26,
                //   boxShadow:[
                //     BoxShadow(
                //       offset: Offset.fromDirection(100),
                //     color: Colors.black12,
                //     spreadRadius:5,
                //     blurRadius: 10,
                //   )],
                //   ),
                //   child: Row(
                //     children: [
                //       Container(
                //         //Tick Mark
                //         decoration: BoxDecoration(borderRadius: BorderRadius.circular(50)),
                //         child: Padding(
                //           padding: const EdgeInsets.all(8.0),
                //           child: Container(height: 50,
                //               width: 50,

                //               decoration: BoxDecoration(color:Colors.red,borderRadius: BorderRadius.circular(30)),
                //               child: Icon(Icons.check_circle)),
                //         ),),

                //       Expanded(
                //         child: Container(
                //           //title
                //           child: Column(
                //             crossAxisAlignment: CrossAxisAlignment.start,
                //             children:[
                //               Text(chapter[index].title,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
                //               Text('${chapter[index].count}/${chapter[index].totalCount} Completed'),
                //             ],
                //           ),
                //         ),
                //       ),

                //       Padding(
                //         padding: const EdgeInsets.all(8.0),
                //         child: Icon(Icons.keyboard_arrow_down),
                //       ),
                //     ],
                //   ),
                // ),

                ),
          );
        },
        itemCount: chapter.length,
      ),
    );
  }
}
