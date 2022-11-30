
import 'package:celebritygame_net/controlleter/nft_controller.dart';
import 'package:celebritygame_net/views/pages/Nft/nft_per_person.dart';
import 'package:crypto_font_icons/crypto_font_icons.dart';
import 'package:celebritygame_net/views/widget/loading/custom_loading.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

class VNftPage extends StatelessWidget {
  VNftPage({Key? key}) : super(key: key);

  final controller = Get.put(NftController());


  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return controller.isLoading
          ? const Center(
              child: CustomLoadingAPI(),
            )
          : GridView.builder(
          padding: const EdgeInsets.all(15),
         physics: NeverScrollableScrollPhysics(),


          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200,
              childAspectRatio: 2/ 4,
              crossAxisSpacing: 20,
              mainAxisSpacing: 20),
          itemCount: controller.nftModel.nft.length,
          itemBuilder: (BuildContext ctx, index) {
            return   GestureDetector(
              onTap: (){
             //  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>NftPerPage(Controller: controller.nftModel.nft[index],)));
              Get.to(NftPerPage());
              },
              child: Container(
                height: MediaQuery.of(context).size.height,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color.fromARGB(255, 57, 57, 58),
                  ),

                  padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 8),

                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.network(
                              "${controller.nftModel.nft[index].avatar}",height: 150,width: MediaQuery.of(context).size.width,fit: BoxFit.cover,)),
                      Gap(10),
                      Text("Name Of NFT:",style: TextStyle(color: Colors.blue),),
                      Text("${controller.nftModel.nft[index].name}",style: TextStyle(color: Colors.white),),
                      Gap(10),
                      Text("Price Of NFT:",style: TextStyle(color: Colors.blue),),
                      Text("${controller.nftModel.nft[index].price}",style: TextStyle(color: Colors.white),),
                      Gap(10),
                      const Divider(
                        indent: 2,
                        endIndent: 2,
                        height: 1,
                        thickness: 1,
                        color: Colors.grey,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Center(
                            child: TextButton(
                                style: TextButton.styleFrom(
                                  foregroundColor: Colors.white,
                                  backgroundColor: Colors.green,
                                  padding: EdgeInsets.symmetric(horizontal: 30),
                                 visualDensity: VisualDensity(

                                   vertical: -2,
                                 ),
                                ),
                                onPressed: () {},
                                child: const Text("PAY BY CRYPTO",
                                    style: TextStyle(fontSize: 12))),
                          ),
                          Gap(0),
                          Center(
                            child: TextButton(

                                style: TextButton.styleFrom(

                                  foregroundColor: Colors.white,
                                  backgroundColor: Colors.blue,
                                  padding: EdgeInsets.symmetric(horizontal: 30),
                                  visualDensity: VisualDensity(

                                    vertical: -2,
                                  ),
                                ),
                                onPressed: () {},
                                child: const Text("PAY BY PAYNOW",
                                    style: TextStyle(fontSize: 12))),
                          ),
                        ],
                      ),

                    ],
                  )
              ),
            );
          });
    });
  }
}
