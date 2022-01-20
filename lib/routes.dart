import 'package:flutter/material.dart';
import 'package:flutter_glays/Screens/productdetail_page.dart';

import 'Screens/cart_page.dart';

final Map<String, WidgetBuilder> routes = {
  Cart.routeName: (context) => Cart(),
  ProductDetail.routeName: (context)=> ProductDetail(),
};
