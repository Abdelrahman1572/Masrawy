// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:project/modules/Screens/Layouts/Details/Alahly-details.dart';
import 'package:project/modules/Screens/Layouts/Details/G&J-details.dart';
import 'package:project/modules/Screens/Layouts/Details/Gloves%20XC-details.dart';
import 'package:project/modules/Screens/Layouts/Details/Logitech-details.dart';
import 'package:project/modules/Screens/Layouts/Details/NikeSport-details.dart';
import 'package:project/modules/Screens/Layouts/Details/Orange-details.dart';
import 'package:project/modules/Screens/Layouts/Details/PS4-details.dart';
import 'package:project/modules/Widget/Product.dart';
class ProductCard extends StatelessWidget {
  const ProductCard({
    Key? key,
    this.width = 140,
    this.aspectRetio = 1.02,
    required this.product,
  }) : super(key: key);

  final double width, aspectRetio;
  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: SizedBox(
        width: 150,
        child: GestureDetector(
          onTap: () {
            if(product.id == 1){
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => const Details(),
                  ));
            }
            if(product.id == 2){
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => const Details1(),
                  ));
            }
            if(product.id == 3){
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => const Details2(),
                  ));
            }
            if(product.id == 4){
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => const Details3(),
                  ));
            }
            if(product.id == 5){
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => const Details4(),
                  ));
            }
            if(product.id == 6){
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => const Details5(),
                  ));
            }
            if(product.id == 7){
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => const Details6(),
                  ));
            }
          },
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AspectRatio(
                aspectRatio: 1.02,
                child: Container(
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: const Color(0xFF979797).withOpacity(0.1),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Hero(
                    tag: product.id.toString(),
                    child: Image.asset(product.images[0]),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Text(
                product.title,
                style: const TextStyle(color: Colors.black),
                maxLines: 2,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "\$${product.price}",
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFFFF7643),
                    ),
                  ),
                  InkWell(
                    borderRadius: BorderRadius.circular(50),
                    onTap: () {},
                    child: Container(
                      padding: const EdgeInsets.all(8),
                      height: 28,
                      width:28,
                      decoration: BoxDecoration(
                        color: product.isFavourite
                            ? const Color(0xFFFF7643).withOpacity(0.15)
                            : const Color(0xFF979797).withOpacity(0.1),
                        shape: BoxShape.circle,
                      ),
                      child: SvgPicture.asset(
                        "assets/icons/Heart Icon_2.svg",
                        color: product.isFavourite ? const Color(0xFFFF4848) : const Color(0xFFDBDEE4),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
