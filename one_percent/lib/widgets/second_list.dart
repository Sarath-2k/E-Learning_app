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
      child: ListView.builder(
          shrinkWrap: true,
          itemCount: applets.length,
          itemBuilder: (context, index) {
            return GestureDetector(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => Study(
                            title: applets[index],
                          )));
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical:8.0,horizontal: 5),
                  child: Card(
                    borderOnForeground: true,
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Container(
                        child: Expanded(
                            child: Padding(
                          padding: const EdgeInsets.all(18.0),
                          child: Text(applets[index],
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20.0)),
                        )),
                      ),
                    ),
                  ),
                )
                );
          }),
    );
  }
}
