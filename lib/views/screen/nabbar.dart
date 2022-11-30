
import 'package:celebritygame_net/views/pages/Games/game.dart';
import 'package:celebritygame_net/views/pages/Home/homepage.dart';
import 'package:celebritygame_net/views/pages/Nft/nft.dart';
import 'package:celebritygame_net/views/pages/Profile/login.dart';
import 'package:celebritygame_net/views/pages/Profile/profile.dart';
import 'package:flutter/material.dart';

class NavPage extends StatefulWidget {
  const NavPage({super.key});

  @override
  State<NavPage> createState() => _NavPageState();
}

class _NavPageState extends State<NavPage> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    GamePageView(),
    NftPage(),
    Loginpage(),
    ProfilePage(),


  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(

        backgroundColor: Colors.black,
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            backgroundColor: Colors.black,
            icon: Icon(
              Icons.home,
            ),
            label: 'Home',
          ),
       /*   BottomNavigationBarItem(
            backgroundColor: Colors.black,
            icon: Icon(
              Icons.badge_sharp,
            ),
            label: 'Metaverse',
          ),*/
          BottomNavigationBarItem(
            backgroundColor: Colors.black,
            icon: Icon(
              Icons.games_rounded,
            ),
            label: 'Games',
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.black,
            icon: Icon(
              Icons.book,
            ),
            label: 'NFTs',
          ),
          BottomNavigationBarItem(

            backgroundColor: Colors.black,
            icon: Icon(
              Icons.person,
            ),
            label: 'Profile',
          ),


        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        selectedIconTheme: IconThemeData(size: 25),
        showSelectedLabels: true,
        showUnselectedLabels: true,
        onTap: _onItemTapped,
      ),
    );
  }
}
