import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class IconBtnWithCounter extends StatelessWidget {
  const IconBtnWithCounter({
    Key? key,
    required this.iconcart,
    this.numberitem = 0,
    required this.press,
  }) : super(key: key);

  final String iconcart;
  final int numberitem;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(100),
      onTap: press,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            padding: EdgeInsets.all(MediaQuery.of(context).getProportionateScreenWidth(12)),
            height: MediaQuery.of(context).getProportionateScreenWidth(46),
            width: MediaQuery.of(context).getProportionateScreenWidth(46),
            decoration: BoxDecoration(
              color: kSecondaryColor.withOpacity(0.1),
              shape: BoxShape.circle,
            ),
            child: SvgPicture.asset(iconcart),
          ),
          if (numberitem != 0)
            Positioned(
              top: -3,
              right: 0,
              child: Container(
                height: MediaQuery.of(context).getProportionateScreenWidth(16),
                width: MediaQuery.of(context).getProportionateScreenWidth(16),
                decoration: BoxDecoration(
                  color: Color(0xFFFF4848),
                  shape: BoxShape.circle,
                  border: Border.all(width: 1.5, color: Colors.white),
                ),
                child: Center(
                  child: Text(
                    "$numberitem",
                    style: TextStyle(
                      fontSize: MediaQuery.of(context).getProportionateScreenWidth(10),
                      height: 1,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            )
        ],
      ),
    );
  }
}
