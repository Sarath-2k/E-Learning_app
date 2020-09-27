
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
                        color:Colors.redAccent
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
                
                ),
          );
        },
        itemCount: chapter.length,
      ),
    );
  }
}
