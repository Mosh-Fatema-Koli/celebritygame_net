
import 'package:celebritygame_net/views/widget/White_custom_TextField.dart';
import 'package:celebritygame_net/views/widget/brand_colors.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

class RegMetavarse extends StatefulWidget {
  const RegMetavarse({Key? key}) : super(key: key);

  @override
  State<RegMetavarse> createState() => _RegMetavarseState();
}

class _RegMetavarseState extends State<RegMetavarse> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          ListTile(
            trailing: IconButton(
              onPressed: () {
                Get.back();
              },
              icon: Icon(
                Icons.close,
                color: Colors.white,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 15,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                    child: Image.asset(
                      "images/logo.jpg",
                      height: 100,
                      width: 100,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Stand a chance to win one of the 10 Darkkey Nagaraja Celebrity NFTs we give away.",
                  style: myStyles16(),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  "Don’t miss it, it is worth SGD 399.",
                  style: myStyles16(),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Name*",
                  style: myStyles16(),
                ),
                WhiteCustomTextField(
                  hintText: "Name",
                ),
                Text(
                  "Email*",
                  style: myStyles16(),
                ),
                WhiteCustomTextField(
                  hintText: "Email",
                ),
                Text(
                  "Mobile*",
                  style: myStyles16(),
                ),
                WhiteCustomTextField(
                  hintText: 'Mobile',
                ),
                Gap(10),
                GestureDetector(
                  onTap: () {
                     },
                  child: Center(
                    child: Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: 20, vertical: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Color.fromARGB(255, 115, 115, 115),
                      ),
                      child: Text(
                        "SUBMIT",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                ),
                Gap(20),
              ],
            ),
          ),
        ],
      ),
    )
    ;
  }
}
