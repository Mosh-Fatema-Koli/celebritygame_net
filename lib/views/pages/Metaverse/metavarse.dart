

import 'package:celebritygame_net/views/pages/Metaverse/metavarse_pop_up.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class MetavarsePage extends StatelessWidget {
  const MetavarsePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,


          children: [


            Text("EXPERIENCE OUR METAVERSE",style: TextStyle(color: Colors.white,fontSize: 20),),
          Gap(5),

            SizedBox(
              height: 5.0,
              child: new Center(
                child: new Container(
                  margin: new EdgeInsetsDirectional.only(start: 150, end:150 ),
                  height: 1.0,
                  color: Colors.purple,
                ),
              ),
            ),
            Gap(10),


            GestureDetector(
              onTap: () {
                showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                          titlePadding: EdgeInsets.only(top: 12, left: 20, right: 20),
                          contentPadding: EdgeInsets.only(top: 12, left: 15, bottom: 15),
                          insetPadding: EdgeInsets.symmetric(horizontal: 15,vertical: 15),
                          backgroundColor: Color.fromARGB(255, 49, 49, 49),
                        title: RegMetavarse()
                      );
                    });
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 10, horizontal: 20),
                child: Center(
                  child: Container(
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            Color.fromARGB(255, 221, 78, 202),
                            Color.fromARGB(255, 103, 5, 121),
                          ],
                        )),
                    child: Text(
                      "REGISTER YOUR INTEREST",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                    ),
                  ),
                ),
              ),
            ),
            Gap(10),
            Text("Stand a chance to win one of the 10 Darkkey Nagaraja Celebrity NFTs we give away.",style: TextStyle(color: Colors.amber,fontSize: 16), textAlign: TextAlign.center,)

          ],
        ),
      ),
    );
  }
}
