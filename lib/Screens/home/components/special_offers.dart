import 'package:flutter/material.dart';
import 'package:flutter_glays/Screens/productdetail_page.dart';

import '../../../size_config.dart';
import '../../HistoryOrderDetail.dart';
import 'section_title.dart';

class SpecialOffers extends StatelessWidget {
  const SpecialOffers({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal:
                  MediaQuery.of(context).getProportionateScreenWidth(20)),
          child: SectionTitle(
            title: "New Products",
            press: () {},
          ),
        ),
        SizedBox(
            height: MediaQuery.of(context).getProportionateScreenWidth(20)),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              SpecialOfferCard(
                image: "assets/images/pc_gaming1.jpg",
                category: "PC Gaming",
                numOfBrands: 18,
                press: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ProductDetail()),
                  );
                },
              ),
              SpecialOfferCard(
                image: "assets/images/Redmi_G-2021.jpg",
                category: "Laptop Gaming",
                numOfBrands: 15,
                press: () {},
              ),
              SizedBox(
                  width:
                      MediaQuery.of(context).getProportionateScreenWidth(20)),
            ],
          ),
        ),
      ],
    );
  }
}

class SpecialOfferCard extends StatelessWidget {
  const SpecialOfferCard({
    Key? key,
    required this.category,
    required this.image,
    required this.numOfBrands,
    required this.press,
  }) : super(key: key);

  final String category, image;
  final int numOfBrands;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          left: MediaQuery.of(context).getProportionateScreenWidth(20)),
      child: GestureDetector(
        onTap: press,
        child: SizedBox(
          width: MediaQuery.of(context).getProportionateScreenWidth(242),
          height: MediaQuery.of(context).getProportionateScreenWidth(100),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Stack(
              children: [
                Image.asset(
                  image,
                  fit: BoxFit.cover,
                ),
                Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Color(0xFF343434).withOpacity(0.4),
                        Color(0xFF343434).withOpacity(0.15),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context)
                        .getProportionateScreenWidth(15.0),
                    vertical:
                        MediaQuery.of(context).getProportionateScreenWidth(10),
                  ),
                  child: Text.rich(
                    TextSpan(
                      style: TextStyle(color: Colors.white),
                      children: [
                        TextSpan(
                          text: "$category\n",
                          style: TextStyle(
                            fontSize: MediaQuery.of(context)
                                .getProportionateScreenWidth(18),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextSpan(text: "$numOfBrands Brands")
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
