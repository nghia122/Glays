import 'package:flutter/material.dart';
import 'package:flutter_glays/Screens/home/components/categories.dart';
import 'package:flutter_glays/Screens/home/components/discount_banner.dart';
import 'package:flutter_glays/Screens/home/components/popular_product.dart';
import 'package:flutter_glays/Screens/home/components/special_offers.dart';
import 'homeheader_page.dart';

import '../../../size_config.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child:Column(
          children: [
            SizedBox(height: MediaQuery.of(context).getProportionateScreenHeight(20)),
            HomeHeader(),            
            SizedBox(height: MediaQuery.of(context).getProportionateScreenWidth(10)),
            DiscountBanner(),
            Categories(),
            SpecialOffers(),
            SizedBox(height: MediaQuery.of(context).getProportionateScreenWidth(30)),
            PopularProducts(),
            SizedBox(height: MediaQuery.of(context).getProportionateScreenWidth(30)),
          ],
        ),
      ),
    );
  }
}

