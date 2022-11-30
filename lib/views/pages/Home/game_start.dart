
import 'package:celebritygame_net/views/pages/Home/race_select_popup.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

class GamePage extends StatelessWidget {
  const GamePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.black,
        leading: IconButton(onPressed: (){
          Get.back();
        },icon: Icon(Icons.arrow_back_ios,color: Colors.white,),)
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(

          children: [

            Container(

              child: Image.asset(
                "images/race.png",fit:BoxFit.fitWidth,
                height: 300,

                width:520,
              ),
            ),

        Container(
          child: Image.asset(
            "images/race2.png",fit: BoxFit.cover,
            height: 200,
            width: 500,),
        ),
            Gap(20),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Column(
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 5,horizontal: 10),
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(5)
                      ),
                      child: Text(
                        "0",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    Text(
                      "Secounds",
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
                Gap(15),
                Column(
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 5,horizontal: 10),
                      decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(5)
                      ),
                      child: Text(
                        "000",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    Text(
                      "Milisecounds",
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
                Gap(20),
                GestureDetector(
                  onTap: (){
                    showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            backgroundColor: Color.fromARGB(255, 41, 40, 40),
                            title: RaceSelect(),
                          );
                        });
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                    decoration: BoxDecoration(
                        color: Colors.teal,
                        borderRadius: BorderRadius.circular(5)
                    ),
                    child: Text(
                      "Start Race",
                      style: TextStyle(color: Colors.white,),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
