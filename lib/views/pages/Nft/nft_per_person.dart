
import 'package:celebritygame_net/controlleter/nft_controller.dart';
import 'package:celebritygame_net/views/widget/White_custom_TextField.dart';
import 'package:celebritygame_net/views/widget/loading/custom_loading.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

class NftPerPage extends StatelessWidget {
  NftPerPage({super.key});

  final controller = Get.put(NftController());
  TextEditingController _scarch = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(
          onPressed: (){
            Get.back();
          },icon: Icon(Icons.arrow_back_ios),
        ),


      ),

      body: ListView(
        children: [
          Obx(() {
            return controller.isLoading
                ? const Center(
                    child: CustomLoadingAPI(),
                  )
                : Padding(
                    padding: const EdgeInsets.all(15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Center(
                            child: Text(
                          "Type Of NFTs : Celebrity NFTs",
                          style: TextStyle(
                              color: Color.fromARGB(255, 196, 34, 161),
                              fontSize: 25),
                        )),
                        Gap(40),
                        Image.network(
                          "${controller.nftModel.nft.first.avatar}",
                          height: 400,
                          fit: BoxFit.cover,
                        ),
                        Gap(20),
                        Text(
                          "Name Of NFT:",
                          style: TextStyle(color: Colors.blue, fontSize: 18),
                        ),
                        Gap(5),
                        Text(controller.nftModel.nft.first.name,
                            style:
                                TextStyle(color: Colors.white, fontSize: 18)),
                        Gap(20),
                        Text(
                          "Available NFTs:",
                          style: TextStyle(color: Colors.blue, fontSize: 18),
                        ),
                        Gap(5),
                        Text("${controller.nftModel.nft.first.price}",
                            style:
                                TextStyle(color: Colors.white, fontSize: 18)),
                        Gap(20),
                        Text(
                          "NFT Details:",
                          style: TextStyle(color: Colors.blue, fontSize: 18),
                        ),
                        Gap(5),
                        Text("${controller.nftModel.nft.first.description}",
                            style:
                                TextStyle(color: Colors.white, fontSize: 18)),
                        Gap(20),
                        Text(
                          "Brief Details of Celebrity:",
                          style: TextStyle(color: Colors.blue, fontSize: 18),
                        ),
                        Gap(5),
                        Text("${controller.nftModel.nft.first.briefDetails}",
                            style:
                                TextStyle(color: Colors.white, fontSize: 18)),
                        Gap(20),
                        Text(
                          "Perks of NFT:",
                          style: TextStyle(color: Colors.blue, fontSize: 18),
                        ),
                        Gap(10),
                        Text("${controller.nftModel.nft.first.perkNft}",
                            style:
                                TextStyle(color: Colors.white, fontSize: 18)),
                        Gap(20),
                        Text(
                          "Choose how you want to pay:",
                          style: TextStyle(color: Colors.blue, fontSize: 18),
                        ),
                        Gap(10),
                        //DropPage(),
                        Gap(20),
                        Text(
                          "( 30% discount if paid with DSL tokens)",
                          style: TextStyle(
                              color: Color.fromARGB(255, 110, 196, 131),
                              fontSize: 18,
                              fontWeight: FontWeight.w600),
                        ),
                        Gap(20),
                        Text(
                          "Enjoy 10% if you have affiliate code.",
                          style: TextStyle(color: Colors.purple, fontSize: 18),
                        ),
                        Gap(20),
                        Text(
                          "Affiliate Code:",
                          style: TextStyle(color: Colors.blue, fontSize: 18),
                        ),
                        WhiteCustomTextField(
                            hintText: "Enter Affiliate Code",
                            controller: _scarch,
                            suffixIcon: IconButton(
                              onPressed: () {
                                _scarch.clear();
                              },
                              icon: Icon(Icons.clear_rounded,
                                  color: Colors.black),
                            )),
                        Gap(20),
                        Text(
                          "You need to pay 0.9945 BNB",
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                        Gap(10),
                        GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Container(
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                gradient: LinearGradient(
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                  colors: [
                                    Colors.blue,
                                    Colors.pink,
                                  ],
                                )),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.account_balance_wallet_rounded,
                                  color: Colors.white,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  "Connect Wallet",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Gap(20),
                        Gap(10),
                        GestureDetector(
                          onTap: () {

                          },
                          child: Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 20, vertical: 10),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: Color.fromARGB(255, 184, 37, 37)),
                            child: Text(
                              "Back",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
          }),
          SizedBox(
            height: 30,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                  child: Text(
                "Related NFTs",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.w400),
              )),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 60, vertical: 10),
                child: Divider(
                  indent: 98,
                  endIndent: 95,
                  color: Color.fromARGB(255, 196, 34, 161),
                  thickness: 3,
                  height: 5,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                "No related NFTs for now!",
                style: TextStyle(
                    color: Color.fromARGB(255, 126, 35, 126),
                    fontSize: 18,
                    fontWeight: FontWeight.w600),
              ),

            ],
          )
        ],
      ),
    );
  }
}
