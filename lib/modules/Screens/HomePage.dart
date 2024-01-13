import 'package:google_fonts/google_fonts.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:project/modules/Screens/Layouts/Home.dart';
import 'package:project/modules/Screens/Layouts/Profile-Screen.dart';
import 'package:project/modules/Screens/Layouts/Search-Screen.dart';
import 'package:project/modules/Screens/Layouts/Shop-Screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;
  List<Widget> screensLayout = [
    const Home(),
    const SearchScreen(),
    const ShopScreen(),
    const ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screensLayout[_currentIndex],
      bottomNavigationBar: SalomonBottomBar(
        backgroundColor: Colors.white70,
        unselectedItemColor: Colors.black45,
        currentIndex: _currentIndex,
        onTap: (value) {
          setState(() {
            _currentIndex = value;
          });
        },
        items: [
          SalomonBottomBarItem(
            icon: const Icon(
              Icons.home_outlined,
              size: 35,
            ),
            title: Text(
              "Home",
              style: GoogleFonts.robotoSlab(color: Colors.black),
            ),
            selectedColor: Colors.orangeAccent,
          ),
          SalomonBottomBarItem(
            icon: const Icon(
              Icons.category_outlined,
              size: 35,
            ),
            title:  Text("Category",style: GoogleFonts.robotoSlab(color: Colors.black,fontSize: 17),),
            selectedColor: Colors.orangeAccent,
          ),
          SalomonBottomBarItem(
            icon: const Icon(
              Icons.shopping_cart_outlined,
              size: 35,
            ),
            title: Text(
              "Shop",
              style: GoogleFonts.robotoSlab(
                color: Colors.black,
                fontSize: 17,
              ),
            ),
            selectedColor: Colors.orangeAccent,
          ),
          SalomonBottomBarItem(
            icon: const Icon(
              Icons.account_circle_outlined,
              size: 35,
            ),
            title: Text("Account",style: GoogleFonts.robotoSlab(color: Colors.black,fontSize: 17) ,),
            selectedColor: Colors.orangeAccent,
          ),
        ],
      ),
    );
  }
}
