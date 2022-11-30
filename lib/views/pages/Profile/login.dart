
import 'package:celebritygame_net/views/pages/Profile/profile.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';


class Loginpage extends StatefulWidget {
  const Loginpage({Key? key}) : super(key: key);

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset("images/metamask.png"),
            Gap(10),
            Text("Metamask", style: TextStyle(
                color: Colors.grey, fontWeight: FontWeight.w600,fontSize: 16),),
            Gap(10),
            GestureDetector(
              onTap: () {
              Get.to(ProfilePage());
              },
              child: Container(
                padding:
                EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.orange),
                child: Text(
                  "Click Here To Login",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.w600,fontSize: 16),
                ),
              ),
            ),
            Gap(10),
            Text("You can use Binance Chain to connect.",style: TextStyle(
                color: Colors.grey, fontWeight: FontWeight.w600,fontSize: 16),),
            Gap(10),
              Text("Add Binance Chain in your Metamask as follows.",style: TextStyle(
                  color: Colors.grey, fontWeight: FontWeight.w600,fontSize: 16),),
            Gap(10),
            Text("https://academy.binance.com/en/articles /connecting-metamask-to-binance-smart-chain",style: TextStyle(
                color: Colors.grey, fontWeight: FontWeight.w600,fontSize: 14),textAlign: TextAlign.center,)



          ],
        ),
      ),
    );
  }
}
