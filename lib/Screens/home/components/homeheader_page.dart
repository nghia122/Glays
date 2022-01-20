import 'package:flutter/material.dart';
import 'package:flutter_glays/Screens/cart_page.dart';
import 'package:flutter_glays/Screens/home/components/icon_btn_with_counter.dart';
import 'package:flutter_glays/Screens/home/components/search_field.dart';

import '../../../size_config.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: MediaQuery.of(context).getProportionateScreenWidth(20)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SearchField(),
          IconBtnWithCounter(
           iconcart: "assets/icons/Cart Icon.svg",
           press: () => Navigator.pushNamed(context, Cart.routeName),
          ),
          IconBtnWithCounter(
    iconcart: "assets/icons/Bell.svg",
    numberitem: 3,
    press: () {},
          ),
        ],
      ),
    );
  }
}