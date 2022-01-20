import 'package:flutter/material.dart';

import '../../../size_config.dart';

class DiscountBanner extends StatelessWidget {
  const DiscountBanner({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 90,
      width: double.infinity,
      
      margin: EdgeInsets.all(MediaQuery.of(context).getProportionateScreenWidth(20)),
      
      padding: EdgeInsets.symmetric(
        
        horizontal: MediaQuery.of(context).getProportionateScreenWidth(20),
        vertical: MediaQuery.of(context).getProportionateScreenWidth(15),
      ),
      decoration:
      BoxDecoration(
        
        color: Color(0xFFDC143C),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text.rich(
        TextSpan(
          style: TextStyle(color: Colors.white),
          children: [
            TextSpan(text: "Happy New Year\n"),
            TextSpan(
              
              text: "Sale 30% Discount",
              style: TextStyle(
                fontSize: MediaQuery.of(context).getProportionateScreenWidth(24),
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
