import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project/modules/Screens/HomePage.dart';

class FashionDetails extends StatelessWidget {
  const FashionDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                InkWell(
                  onTap: (){
                    Navigator.pop(
                        context,
                        MaterialPageRoute(builder: (_) => const HomeScreen(),));
                  },
                  child: Container(
                      margin: const EdgeInsets.only(left: 15,top: 38),
                      padding: const EdgeInsets.all(10),
                      height: 45,
                      width: 40,
                      decoration: const BoxDecoration(
                        color: Color.fromRGBO(208, 211, 212, 0.7),
                        shape: BoxShape.circle,
                      ),
                      child: SvgPicture.asset('assets/icons/Back ICon.svg',)
                  ),
                ),
                Container(
                    margin: const EdgeInsets.only(top: 34, left: 70),
                    child: Text(
                      'Fashion',
                      style: GoogleFonts.robotoSlab(fontSize: 40),
                    )),
              ],
            ),
            const SizedBox(height: 30,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                InkWell(
                  onTap: (){},
                  child: Container(
                    padding: const EdgeInsets.all(15),
                    height: 190,
                    width: 190,
                    decoration: BoxDecoration(
                      //image: DecorationImage(image: AssetImage()),
                      color: Colors.black12,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: const Center(child: Text('Fashion',textAlign: TextAlign.center,style: TextStyle(fontSize: 25),)),
                  ),
                ),
                InkWell(
                  onTap: (){},
                  child: Container(
                    padding: const EdgeInsets.all(15),
                    height: 190,
                    width: 190,
                    decoration: BoxDecoration(
                      //image: DecorationImage(image: AssetImage()),
                      color: Colors.black12,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: const Center(child: Text('Fashion',textAlign: TextAlign.center,style: TextStyle(fontSize: 25),)),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                InkWell(
                  onTap: (){},
                  child: Container(
                    padding: const EdgeInsets.all(15),
                    height: 190,
                    width: 190,
                    decoration: BoxDecoration(
                      //image: DecorationImage(image: AssetImage()),
                      color: Colors.black12,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: const Center(child: Text('Fashion',textAlign: TextAlign.center,style: TextStyle(fontSize: 25),)),
                  ),
                ),
                InkWell(
                  onTap: (){},
                  child: Container(
                    padding: const EdgeInsets.all(15),
                    height: 190,
                    width: 190,
                    decoration: BoxDecoration(
                      //image: DecorationImage(image: AssetImage()),
                      color: Colors.black12,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: const Center(child: Text('Fashion',textAlign: TextAlign.center,style: TextStyle(fontSize: 25),)),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                InkWell(
                  onTap: (){},
                  child: Container(
                    padding: const EdgeInsets.all(15),
                    height: 190,
                    width: 190,
                    decoration: BoxDecoration(
                      //image: DecorationImage(image: AssetImage()),
                      color: Colors.black12,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: const Center(child: Text('Fashion',textAlign: TextAlign.center,style: TextStyle(fontSize: 25),)),
                  ),
                ),
                InkWell(
                  onTap: (){},
                  child: Container(
                    padding: const EdgeInsets.all(15),
                    height: 190,
                    width: 190,
                    decoration: BoxDecoration(
                      //image: DecorationImage(image: AssetImage()),
                      color: Colors.black12,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: const Center(child: Text('Fashion',textAlign: TextAlign.center,style: TextStyle(fontSize: 25),)),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                InkWell(
                  onTap: (){},
                  child: Container(
                    padding: const EdgeInsets.all(15),
                    height: 190,
                    width: 190,
                    decoration: BoxDecoration(
                      //image: DecorationImage(image: AssetImage()),
                      color: Colors.black12,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: const Center(child: Text('Fashion',textAlign: TextAlign.center,style: TextStyle(fontSize: 25),)),
                  ),
                ),
                InkWell(
                  onTap: (){},
                  child: Container(
                    padding: const EdgeInsets.all(15),
                    height: 190,
                    width: 190,
                    decoration: BoxDecoration(
                      //image: DecorationImage(image: AssetImage()),
                      color: Colors.black12,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: const Center(child: Text('Fashion',textAlign: TextAlign.center,style: TextStyle(fontSize: 25),)),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                InkWell(
                  onTap: (){},
                  child: Container(
                    padding: const EdgeInsets.all(15),
                    height: 190,
                    width: 190,
                    decoration: BoxDecoration(
                      //image: DecorationImage(image: AssetImage()),
                      color: Colors.black12,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: const Center(child: Text('Fashion',textAlign: TextAlign.center,style: TextStyle(fontSize: 25),)),
                  ),
                ),
                InkWell(
                  onTap: (){},
                  child: Container(
                    padding: const EdgeInsets.all(15),
                    height: 190,
                    width: 190,
                    decoration: BoxDecoration(
                      //image: DecorationImage(image: AssetImage()),
                      color: Colors.black12,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: const Center(child: Text('Fashion',textAlign: TextAlign.center,style: TextStyle(fontSize: 25),)),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                InkWell(
                  onTap: (){},
                  child: Container(
                    padding: const EdgeInsets.all(15),
                    height: 190,
                    width: 190,
                    decoration: BoxDecoration(
                      //image: DecorationImage(image: AssetImage()),
                      color: Colors.black12,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: const Center(child: Text('Fashion',textAlign: TextAlign.center,style: TextStyle(fontSize: 25),)),
                  ),
                ),
                InkWell(
                  onTap: (){},
                  child: Container(
                    padding: const EdgeInsets.all(15),
                    height: 190,
                    width: 190,
                    decoration: BoxDecoration(
                      //image: DecorationImage(image: AssetImage()),
                      color: Colors.black12,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: const Center(child: Text('Fashion',textAlign: TextAlign.center,style: TextStyle(fontSize: 25),)),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                InkWell(
                  onTap: (){},
                  child: Container(
                    padding: const EdgeInsets.all(15),
                    height: 190,
                    width: 190,
                    decoration: BoxDecoration(
                      //image: DecorationImage(image: AssetImage()),
                      color: Colors.black12,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: const Center(child: Text('Fashion',textAlign: TextAlign.center,style: TextStyle(fontSize: 25),)),
                  ),
                ),
                InkWell(
                  onTap: (){},
                  child: Container(
                    padding: const EdgeInsets.all(15),
                    height: 190,
                    width: 190,
                    decoration: BoxDecoration(
                      //image: DecorationImage(image: AssetImage()),
                      color: Colors.black12,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: const Center(child: Text('Fashion',textAlign: TextAlign.center,style: TextStyle(fontSize: 25),)),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                InkWell(
                  onTap: (){},
                  child: Container(
                    padding: const EdgeInsets.all(15),
                    height: 190,
                    width: 190,
                    decoration: BoxDecoration(
                      //image: DecorationImage(image: AssetImage()),
                      color: Colors.black12,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: const Center(child: Text('Fashion',textAlign: TextAlign.center,style: TextStyle(fontSize: 25),)),
                  ),
                ),
                InkWell(
                  onTap: (){},
                  child: Container(
                    padding: const EdgeInsets.all(15),
                    height: 190,
                    width: 190,
                    decoration: BoxDecoration(
                      //image: DecorationImage(image: AssetImage()),
                      color: Colors.black12,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: const Center(child: Text('Fashion',textAlign: TextAlign.center,style: TextStyle(fontSize: 25),)),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                InkWell(
                  onTap: (){},
                  child: Container(
                    padding: const EdgeInsets.all(15),
                    height: 190,
                    width: 190,
                    decoration: BoxDecoration(
                      //image: DecorationImage(image: AssetImage()),
                      color: Colors.black12,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: const Center(child: Text('Fashion',textAlign: TextAlign.center,style: TextStyle(fontSize: 25),)),
                  ),
                ),
                InkWell(
                  onTap: (){},
                  child: Container(
                    padding: const EdgeInsets.all(15),
                    height: 190,
                    width: 190,
                    decoration: BoxDecoration(
                      //image: DecorationImage(image: AssetImage()),
                      color: Colors.black12,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: const Center(child: Text('Fashion',textAlign: TextAlign.center,style: TextStyle(fontSize: 25),)),
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
