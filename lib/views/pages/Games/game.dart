
import 'package:celebritygame_net/views/pages/Games/video.dart';
import 'package:celebritygame_net/views/pages/Games/video2.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:video_player/video_player.dart';

class GamePageView extends StatefulWidget {
  const GamePageView({Key? key}) : super(key: key);

  @override
  State<GamePageView> createState() => _GamePageViewState();
}

class _GamePageViewState extends State<GamePageView> {


  @override


  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,

      body: CustomScrollView(

        slivers: <Widget>[
          SliverAppBar(
            automaticallyImplyLeading: false,
            backgroundColor: Color(0xBA084E62),
            floating: true, pinned: true, snap: false,
            expandedHeight: 80.0,
            flexibleSpace: const FlexibleSpaceBar(

              centerTitle:true,
              title: Text('Game'),
              background: ColoredBox(color: Color(0xBA084E62),),

            ),
          ),
          SliverList(

            delegate: SliverChildBuilderDelegate(
                  (BuildContext context, int index) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.center,

                  children: [

                    VideoWorkPage(),
                    VideoWorkPage2(),
                    VideoWorkPage(),
                    VideoWorkPage2(),


                  ],

                );
              },
              childCount:1,
              semanticIndexOffset: 1

            ),
          ),
        ],
      ),

    );
  }
}
