import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Programs extends StatelessWidget {
  Material tiles(IconData icon, String title) {
    return Material(
      color: Colors.black26,
      elevation: 14,
      borderRadius: BorderRadius.circular(24),
      child: Center(
          child: Padding(
        padding: EdgeInsets.all(10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                //ICON
                Material(
                  color: Colors.redAccent,
                  borderRadius: BorderRadius.circular(24),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(icon,
                    size:50,
                    color: Colors.grey,),
                  ),
                ),
                //TITLE
                Center(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(title,
                    style:TextStyle(
                      color: Colors.white,
                      fontSize: 20.0
                    ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      )),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StaggeredGridView.count(
        crossAxisCount: 2,
        crossAxisSpacing: 12,
        mainAxisSpacing: 10,
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        children: <Widget>[
          tiles(
            Icons.add,
            "Applet",
          ),
          tiles(
            Icons.add,
            "Array",
          ),
          tiles(
            Icons.add,
            "Awt",
          ),
          tiles(
            Icons.add,
            "Basic",
          ),
          tiles(
            Icons.add,
            "Collection",
          ),
          tiles(
            Icons.add,
            "Data Structures",
          ),
          tiles(
            Icons.add,
            "Exception Handling",
          ),
          tiles(
            Icons.add,
            "File Handling",
          ),
          tiles(
            Icons.add,
            "Formula",
          ),
          tiles(
            Icons.add,
            "GUI",
          ),
          tiles(
            Icons.add,
            "Loop",
          ),
          tiles(
            Icons.add,
            "Mathematics & S...",
          ),
          tiles(
            Icons.add,
            "Miscellaneuos",
          ),
          tiles(
            Icons.add,
            "Number",),
          tiles(
            Icons.add,
            "OOPS",),
          tiles(
            Icons.add,
            "Pattern",),
          tiles(
            Icons.add,
            "Recursion",),
          tiles(
            Icons.add,
            "Search",),
          tiles(
            Icons.add,
            "Sort",),
          tiles(
            Icons.add,
            "String",),
          tiles(
            Icons.add,
            "Swing",),
          tiles(
            Icons.add,
            "System",),
          tiles(
            Icons.add,
            "Thread",),
          tiles(
            Icons.add,
            "Vector",
          ),
        ],
        staggeredTiles: [
          StaggeredTile.extent(1, 200),
          StaggeredTile.extent(1, 200),
          StaggeredTile.extent(1, 200),
          StaggeredTile.extent(1, 200),
          StaggeredTile.extent(1, 200),
          StaggeredTile.extent(1, 200),
          StaggeredTile.extent(1, 200),
          StaggeredTile.extent(1, 200),
          StaggeredTile.extent(1, 200),
          StaggeredTile.extent(1, 200),
          StaggeredTile.extent(1, 200),
          StaggeredTile.extent(1, 200),
          StaggeredTile.extent(1, 200),
          StaggeredTile.extent(1, 200),
          StaggeredTile.extent(1, 200),
          StaggeredTile.extent(1, 200),
          StaggeredTile.extent(1, 200),
          StaggeredTile.extent(1, 200),
          StaggeredTile.extent(1, 200),
          StaggeredTile.extent(1, 200),
          StaggeredTile.extent(1, 200),
          StaggeredTile.extent(1, 200),
          StaggeredTile.extent(1, 200),
          StaggeredTile.extent(1, 200),
        ],
      ),
    );
  }
}
