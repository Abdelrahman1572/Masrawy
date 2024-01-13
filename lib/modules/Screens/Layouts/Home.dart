// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:project/modules/Screens/Layouts/CategoryCard.dart';
import 'package:project/modules/Screens/Layouts/Details/Fashion.dart';
import 'package:project/modules/Screens/Layouts/Details/SmartPhone-details.dart';
import 'package:project/modules/Screens/Layouts/ProductCard.dart';
import 'package:project/modules/Screens/Layouts/SectionTitle.dart';
import 'package:project/modules/Screens/Layouts/Shop-Screen.dart';
import 'package:project/modules/Screens/Layouts/SpecialOffer.dart';
import 'package:project/modules/Screens/LogIn.dart';
import 'package:project/modules/Widget/Product.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  List<Map<String, dynamic>> categories = [
    {"icon": "assets/icons/Flash Icon.svg", "text": "Flash Deal"},
    {"icon": "assets/icons/Bill Icon.svg", "text": "Bill"},
    {"icon": "assets/icons/Game Icon.svg", "text": "Game"},
    {"icon": "assets/icons/Gift Icon.svg", "text": "Daily Gift"},
    {"icon": "assets/icons/Discover.svg", "text": "More"},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
         const SizedBox(height: 40),
        Row(
          children: [
            const SizedBox(width: 10,),
            Container(
              width: 240,
              decoration: BoxDecoration(
                color: Colors.black12,
                borderRadius: BorderRadius.circular(15),
              ),
              child: TextField(
                onChanged: (value) => print(value),
                decoration: const InputDecoration(
                    border: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    hintText: "Search product",
                    prefixIcon: Icon(Icons.search)),
              ),
            ),
            const SizedBox(width: 30,),
            InkWell(
              onTap: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => const ShopScreen(),));
              },
              child: Container(
                padding: const EdgeInsets.all(10),
                  height: 55,
                  width: 50,
                  decoration: const BoxDecoration(
                      color: Colors.black12,
                    shape: BoxShape.circle,
                  ),
                  child: SvgPicture.asset('assets/icons/Cart Icon.svg',alignment: Alignment.center,height: 40,width: 40,)
              ),
            ),
            const SizedBox(width: 15,),
            InkWell(
              child: Container(
                padding: const EdgeInsets.all(15),
                height: 55,
                width: 50,
                decoration: const BoxDecoration(
                  color: Colors.black12,
                  shape: BoxShape.circle,
                ),
                child:  SvgPicture.asset('assets/icons/Bell.svg'),
              ),),
          ],
        ),
            const SizedBox(height: 10,),
            InkWell(
              onTap: (){},
              child: Container(
                 height: 100,
                width: double.infinity,
                margin: const EdgeInsets.all(10),
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 15,
                ),
                decoration: BoxDecoration(
                  color: const Color(0xFF4A3298),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Text.rich(
                  TextSpan(
                    style: TextStyle(color: Colors.white),
                    children: [
                      TextSpan(text: "A Summer Surpise\n",style: TextStyle(fontSize: 17)),
                      TextSpan(
                        text: "Cashback 20%",
                        style: TextStyle(
                          fontSize: 35,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
            padding: const EdgeInsets.all(15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: List.generate(
                categories.length,
                    (index) => CategoryCard(
                  icon: categories[index]["icon"],
                  text: categories[index]["text"],
                  press: () {
                    if(index == 0){
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (_) => const LogInScreen(),));
                    }
                    if(index == 1){
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (_) => const LogInScreen(),));
                    }
                    if(index == 2){
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (_) => const LogInScreen(),));
                    }
                    if(index == 3){Navigator.push(
                        context,
                        MaterialPageRoute(builder: (_) => const LogInScreen(),));}
                    if(index == 4){
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (_) => const LogInScreen(),));
                    }
                  },
                ),
              ),
            ),
          ),
            Column(
           children: [
            Padding(
              padding:
              const EdgeInsets.symmetric(horizontal: 20),
              child: SectionTitle(
                title: "Special for you",
                press: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => const LogInScreen(),
                      ));
                },
              ),
            ),
            const SizedBox(height: 20),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  SpecialOfferCard(
                    image: "assets/images/Image Banner 2.png",
                    category: "Smartphone",
                    numOfBrands: 18,
                    press: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => const PhoneDetails(),
                          ));
                    },
                  ),
                  SpecialOfferCard(
                    image: "assets/images/Image Banner 3.png",
                    category: "Fashion",
                    numOfBrands: 24,
                    press: () {
                       Navigator.push(
                           context,
                           MaterialPageRoute(
                             builder: (_) => const FashionDetails(),
                           ));
                         },
                  ),
                  const SizedBox(width: 20),
                ],
              ),
            ),
          ],
        ),
            const SizedBox(height: 15,),
        Column(
          children: [
            Padding(
              padding:
              const EdgeInsets.symmetric(horizontal: 20),
              child: SectionTitle(title: "Popular Products", press: () {}),
            ),
            const SizedBox(height: 20),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ...List.generate(
                    demoProducts.length,
                        (index) {
                      if (demoProducts[index].isPopular) {
                        return ProductCard(product: demoProducts[index]);
                      }

                      return const SizedBox
                          .shrink(); // here by default width and height is 0
                    },
                  ),
                  const SizedBox(width: 20),
                ],
              ),
            ),
            const SizedBox(height: 20,),
            Padding(
              padding:
              const EdgeInsets.symmetric(horizontal: 20),
              child: SectionTitle(title: "Favourite Products", press: () {}),
            ),
            const SizedBox(height: 20),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ...List.generate(
                    demoProducts.length,
                        (index) {
                      if (demoProducts[index].isFavourite) {
                        return ProductCard(product: demoProducts[index]);
                      }

                      return const SizedBox
                          .shrink(); // here by default width and height is 0
                    },
                  ),
                  const SizedBox(width: 20),
                ],
              ),
            ),
          ],
        ),
          ],
        ),
      ),
    );
  }
}






