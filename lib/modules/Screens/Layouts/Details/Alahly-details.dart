import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project/modules/Screens/HomePage.dart';
import 'package:project/modules/Screens/Layouts/CartScreen.dart';
import 'package:project/modules/Widget/Product.dart';

class Details6 extends StatefulWidget {
  const Details6({super.key});

  @override
  State<Details6> createState() => _Details6State();
}

class _Details6State extends State<Details6> {

  var Counter = 0;
  bool showShadow = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: const BoxDecoration(
              color: Colors.black12,
            ),
            child: Row(
              children: [
                InkWell(
                  onTap: (){
                    Navigator.pop(
                        context,
                        MaterialPageRoute(builder: (_) => const HomeScreen(),));
                  },
                  child: Container(
                      margin: const EdgeInsets.only(bottom: 750,left: 15),
                      padding: const EdgeInsets.all(10),
                      height: 45,
                      width: 40,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                      child: SvgPicture.asset('assets/icons/Back ICon.svg',)
                  ),
                ),
                const SizedBox(width: 245,),
                Container(
                    margin: const EdgeInsets.only(bottom: 750,left: 15),
                    padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 2),
                    height: 30,
                    width: 78,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(14),
                    ),
                    child: Row(
                      children: [
                        Text("4.9",style: GoogleFonts.robotoSlab(fontSize: 14.5,fontWeight: FontWeight.bold),),
                        const SizedBox(width: 8,),
                        SvgPicture.asset('assets/icons/Star Icon.svg',width: 20,height: 20,),
                      ],
                    )
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 95),
            width: double.infinity,
            height: double.infinity,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30), topRight: Radius.circular(30)),
            ),
            child: Column(
              children: [
                Center(
                  child: Image.asset('assets/images/Alahly1.png',width: 300,height: 300,),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 400),
            width: double.infinity,
            height: double.infinity,
            decoration: const BoxDecoration(
              color: Colors.black12,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30), topRight: Radius.circular(30)),
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 20,),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 12),
                        child: Text('Al Ahly Official T-shirt - for Players',style: GoogleFonts.robotoSlab(fontSize: 23),),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 25,),
                const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Text(description,maxLines:6,style: TextStyle(fontSize: 25),),
                ),
                const SizedBox(height: 50,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const SizedBox(width: 10,),
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        boxShadow: [
                          if (showShadow)
                            BoxShadow(
                              offset: const Offset(0, 6),
                              blurRadius: 10,
                              color: const Color(0xFFB0B0B0).withOpacity(0.2),
                            ),
                        ],
                      ),
                      child: TextButton(
                        style: TextButton.styleFrom(
                          foregroundColor: const Color(0xFFFF7643),
                          padding: EdgeInsets.zero,
                          backgroundColor: Colors.white,
                          shape:
                          RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
                        ),
                        onPressed: (){
                          setState(() {
                            if(Counter != 0){
                              Counter--;
                            }
                            else if (Counter > 0)
                            {
                              Counter--;
                            }
                          });
                        },
                        child: const Icon(Icons.remove,color: Color(0xFFFF7643),),
                      ),
                    ),
                    const SizedBox(width: 10,),
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(14),
                      ),
                      child: Center(
                        child: Text('$Counter',style: const TextStyle(fontSize: 25),),
                      ),
                    ),
                    const SizedBox(width: 10,),
                    Padding(
                      padding: const EdgeInsets.only(right: 15),
                      child: Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          boxShadow: [
                            if (showShadow)
                              BoxShadow(
                                offset: const Offset(0, 6),
                                blurRadius: 10,
                                color: const Color(0xFFB0B0B0).withOpacity(0.2),
                              ),
                          ],
                        ),
                        child: TextButton(
                          style: TextButton.styleFrom(
                            foregroundColor: const Color(0xFFFF7643),
                            padding: EdgeInsets.zero,
                            backgroundColor: Colors.white,
                            shape:
                            RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
                          ),
                          onPressed: (){
                            setState(() {
                              Counter++;
                            });
                          },
                          child: const Icon(Icons.add,color: Color(0xFFFF7643)),
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 740),
            width: double.infinity,
            height: double.infinity,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30), topRight: Radius.circular(30)),
            ),
            child: Center(
              child: InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) =>  CartScreen(),
                      ));
                },
                child: Container(
                  width: 240,
                  height: 60,
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(colors: [
                      Colors.deepOrangeAccent,
                      Colors.orangeAccent,
                    ]),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(
                    child: Text(
                      "Add To Cart",
                      style: GoogleFonts.robotoSlab(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
