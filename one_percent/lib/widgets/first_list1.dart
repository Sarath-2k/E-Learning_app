// import 'dart:ui';

// import 'package:flutter/material.dart';
// import 'package:grouped_list/grouped_list.dart';

// import '../chapter.dart';

// class firstList1 extends StatelessWidget {
//   const firstList1({
//     @required this.chapter,
//   });

//   final List<Chapter> chapter;

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: GroupedListView(
//         elements: chapter, 
//           groupBy: (Chapter) chapter[index].vers,
//         itemBuilder: (context, index) {
//           return Padding(
//             padding: const EdgeInsets.only(bottom: 14.0),
//             child: Expanded(
//                 child: 
//                 Container(
//                       margin:EdgeInsets.all(20),
//                       decoration: BoxDecoration(
//                         borderRadius:BorderRadius.circular(20),
//                         color:Colors.red
//                       ),
//                   child: Padding(
//                     padding: const EdgeInsets.all(8.0),
//                     child: ExpansionTile(
//                       tilePadding: EdgeInsets.symmetric(vertical:5,horizontal:15),
//               initiallyExpanded: chapter[index].expanded,
//               title: Text(chapter[index].title),
//               childrenPadding: EdgeInsets.all(20),
//               children: [
//                     Container(
//                       margin:EdgeInsets.all(20),
//                       decoration: BoxDecoration(
//                         borderRadius:BorderRadius.circular(20),
//                       ),
//                     ),
//               ],
//             ),
//                   ),
//                 )
                
//                 ),
//           );
//         },
//       ),
        
//     );
//   }
// }
