// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  Container(
                      margin: const EdgeInsets.only(top: 34, left: 10),
                      child: Text(
                    'Masrawy',
                    style: GoogleFonts.robotoSlab(fontSize: 30),
                  )),
                  Container(
                    width: 250,
                    margin: const EdgeInsets.only(top: 38, left: 11),
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
                          hintStyle: TextStyle(
                            fontSize: 20,
                          ),
                          prefixIcon: Icon(Icons.search)),
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
                      child: const Center(child: Text('Smart Phone',textAlign: TextAlign.center,style: TextStyle(fontSize: 25),)),
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
                      child: const Center(child: Text('Smart Phone',textAlign: TextAlign.center,style: TextStyle(fontSize: 25),)),
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
                      child: const Center(child: Text('Smart Phone',textAlign: TextAlign.center,style: TextStyle(fontSize: 25),)),
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
                      child: const Center(child: Text('Smart Phone',textAlign: TextAlign.center,style: TextStyle(fontSize: 25),)),
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
                      child: const Center(child: Text('Smart Phone',textAlign: TextAlign.center,style: TextStyle(fontSize: 25),)),
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
                      child: const Center(child: Text('Smart Phone',textAlign: TextAlign.center,style: TextStyle(fontSize: 25),)),
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
                      child: const Center(child: Text('Smart Phone',textAlign: TextAlign.center,style: TextStyle(fontSize: 25),)),
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
                      child: const Center(child: Text('Smart Phone',textAlign: TextAlign.center,style: TextStyle(fontSize: 25),)),
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
                      child: const Center(child: Text('Smart Phone',textAlign: TextAlign.center,style: TextStyle(fontSize: 25),)),
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
                      child: const Center(child: Text('Smart Phone',textAlign: TextAlign.center,style: TextStyle(fontSize: 25),)),
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
                      child: const Center(child: Text('Smart Phone',textAlign: TextAlign.center,style: TextStyle(fontSize: 25),)),
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
                      child: const Center(child: Text('Smart Phone',textAlign: TextAlign.center,style: TextStyle(fontSize: 25),)),
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
