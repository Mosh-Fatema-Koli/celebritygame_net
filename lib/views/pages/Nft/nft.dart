
import 'package:celebritygame_net/views/pages/Nft/V_all_nft.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
class NftPage extends StatefulWidget {
  const NftPage({Key? key}) : super(key: key);

  @override
  State<NftPage> createState() => _NftPageState();
}

class _NftPageState extends State<NftPage> {

  final myController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return
 Scaffold(
      backgroundColor: Colors.black,
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: TextField(
              controller: myController,
             style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.grey,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.grey,
                      )),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.grey,
                    ),
                  ),
                  contentPadding:
                  EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                  fillColor: Color.fromARGB(255, 16, 30, 56),
                  filled: true,
                  isDense: true,

                suffixIcon: IconButton(
                  onPressed: (){},icon: Icon(Icons.search_outlined,color: Colors.grey,),
                ),
                hintText: 'Search',
                hintStyle: TextStyle(color: Colors.grey),
                )
              ),
            ),


          Container(
            height: MediaQuery.of(context).size.height,
            child: VNftPage(),
          )

        ],
      )
    );

  
  }
}
