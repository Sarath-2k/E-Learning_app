import 'package:flutter/material.dart';
import 'package:one_percent/widgets/applet.dart';
class Program extends StatelessWidget {
  List<String> applets = ['Applet Calculator','Banner Example','Calculate Factorial using Applet','Change Applet Background color using Scrollbar','Chess Board','Clock Example','Drawing Lines Example','Event Handling','Face Draw','J Radio Button','Large Font Example','Shapes Applet'];
  @override
  Widget build(BuildContext context) {
    return Container(
       padding: EdgeInsets.symmetric(vertical: 4.0,horizontal: 8.0),
        child:GridView.builder(
          shrinkWrap: true,
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            childAspectRatio: 3 / 2,
            mainAxisSpacing: 20,
            crossAxisSpacing: 20,
            maxCrossAxisExtent: 200
          ),
          itemCount: applets.length,
          itemBuilder: (context,index){
            return
              Expanded(
                child: GestureDetector(
                  onTap: (){Navigator.of(context).push(MaterialPageRoute(builder: (context) => Applet()));},
                  child: Container(
                    height:250,

                    decoration: BoxDecoration(color: Colors.grey),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container( height:75,width: 150, child:Image.asset('assets/images/applet.jpeg')),
                        ),
                        Expanded(child: Text(applets[index],style: TextStyle(color: Colors.white),))
                      ],
                    ),
                  ),
                ),
              );
          },
        )

    );
  }
}
