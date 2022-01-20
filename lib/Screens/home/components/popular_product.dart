import 'package:flutter/material.dart';
import '../../product_card.dart';
import '../../../models/Product.dart';

import '../../../size_config.dart';
import 'section_title.dart';

class PopularProducts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding:
              EdgeInsets.symmetric(horizontal: MediaQuery.of(context).getProportionateScreenWidth(20)),
          child: SectionTitle(title: "Popular Products", press: () {}),
        ),
        SizedBox(height: MediaQuery.of(context).getProportionateScreenWidth(20)),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              ...List.generate(
                demo.length,
                (index) {
                  if (demo[index].isPopular)
                    return ProductCard(product: demo[index]);
                    // product: demoProducts[index]

                  return SizedBox
                      .shrink(); // here by default width and height is 0
                },
              ),
              SizedBox(width: MediaQuery.of(context).getProportionateScreenWidth(20)),
            ],
          ),
        )
      ],
    );
  }
}
