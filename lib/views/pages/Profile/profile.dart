
import 'package:celebritygame_net/views/widget/custom_TextField.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  TextEditingController _wallet = TextEditingController();
  TextEditingController _email = TextEditingController();
  TextEditingController _uSDSC = TextEditingController();
  TextEditingController _bNB = TextEditingController();
  TextEditingController _dSL = TextEditingController();
  TextEditingController _Referral_ID = TextEditingController();
  TextEditingController _affiliate_Link = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                Text(
                  "Profile",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.w500),
                  textAlign: TextAlign.right,
                ),


                Gap(50),
                Text(
                  "Wallet Address",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                  ),
                ),
                CustomTextField(
                  controller: _wallet,
                  suffixIcon: Icon(
                    Icons.copy_sharp,
                    color: Colors.white,
                  ),
                ),
                Gap(20),
                Text(
                  "Email Address",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                  ),
                ),
                CustomTextField(),

                Gap(20),
                Text(
                  "BNB in wallet",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                  ),
                ),
                CustomTextField(),

                Gap(20),
                Text(
                  "Referral ID",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                  ),
                ),
                CustomTextField(
                  suffixIcon: Icon(
                    Icons.copy_sharp,
                    color: Colors.white,
                  ),
                ),
                Gap(20),
                Text(
                  "Affiliate Link",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                  ),
                ),
                CustomTextField(
                  suffixIcon: Icon(
                    Icons.copy_sharp,
                    color: Colors.white,
                  ),
                ),
                Gap(20),
                Text(
                  "Share Affiliate Link",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                  ),
                ),
                Gap(10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage("images/facebook.png"),
                    ),
                    Gap(10),
                    CircleAvatar(
                      backgroundImage: AssetImage("images/linkedin-logo-3.png"),
                    ),
                    Gap(10),
                    CircleAvatar(
                      backgroundImage: AssetImage(
                          "images/whatsapp-icon-logo-BDC0A8063B-seeklogo.com.png"),
                    ),
                  ],
                ),
                Gap(30),
                Text(
                  "Share your affiliate code to earn 10% of our sales which comes from you. Your friend enjoy another 10% too.",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                  ),
                  textAlign: TextAlign.center,
                ),
                Gap(20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [

                    Gap(10),
                    GestureDetector(
                      onTap: () {

                      },
                      child: Container(
                        padding:
                        EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Color.fromARGB(255, 184, 37, 37)),
                        child: Text(
                          "Cencel",
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                    Gap(10),
                    GestureDetector(
                      onTap: () {

                      },
                      child: Container(
                        padding:
                        EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.amber),
                        child: Text(
                          "Log Out",
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}