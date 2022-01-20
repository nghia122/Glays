import '../widgets/widgets.dart';
import 'package:flutter/material.dart';

_product(var imagePath, var name, var quantity, var price) {
  return Container(
    padding: const EdgeInsets.all(5.0),
    height: 75,
    margin: const EdgeInsets.all(5.0),
    decoration: const BoxDecoration(
      borderRadius: BorderRadius.all(Radius.circular(8.0)),
      color: Colors.white,
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        Image.asset(
          imagePath,
          height: 50,
          width: 75,
        ),
        Column(
          children: <Widget>[
            Text(name,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 17.0,
                    color: Colors.red)),
            Text("Ram 5G, Vi xử lý core i7-500...",
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.grey)),
            Container(
              child: Row(
                children: <Widget>[
                  Text("Số lượng: "),
                  Text(quantity),
                ],
              ),
            ),
          ],
        ),
        Container(
            padding: EdgeInsets.all(10.0),
            child: Column(children: <Widget>[Text("Đơn giá:"), Text(price)])),
      ],
    ),
  );
}

class HistoryOrderDetail extends StatelessWidget {
  static String routeName = "/historyorderdetail";
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      const Backgroudimage(),
      Scaffold(
          backgroundColor: Colors.transparent,
          body: SingleChildScrollView(
            child: SafeArea(
                child: Column(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 5.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Icon(Icons.arrow_back),
                        color: Colors.white,
                        iconSize: 40,
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 5.0),
                        child: Row(
                          children: <Widget>[
                            IconButton(
                              icon: Icon(Icons.account_circle_outlined),
                              onPressed: () {},
                              color: Colors.white,
                            ),
                            IconButton(
                              icon: Icon(Icons.shopping_cart),
                              onPressed: () {},
                              color: Colors.white,
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 5.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Text("Tổng tiền: ",
                          style: TextStyle(color: Colors.white, fontSize: 17)),
                      Text(
                        "250.000.000đ",
                        style: TextStyle(color: Colors.red, fontSize: 17),
                      )
                    ],
                  ),
                ),
                _product("assets/images/1.jpg", "Laptop YoGa the he moi ", "1",
                    "250.000.000"),
                _product("assets/images/1.jpg", "Laptop YoGa the he moi ", "1",
                    "250.000.000"),
                _product("assets/images/1.jpg", "Laptop YoGa the he moi ", "1",
                    "250.000.000"),
                _product("assets/images/1.jpg", "Laptop YoGa the he moi ", "1",
                    "250.000.000"),
              ],
            )),
          ),
          bottomSheet: BottomSheet(
              onClosing: () {},
              builder: (context) {
                return Container(
                    height: 60,
                    child: Column(
                      children: <Widget>[
                        Container(
                          alignment: Alignment.center,
                          margin: EdgeInsets.all(5.0),
                          color: Colors.red,
                          width: double.maxFinite,
                          child: TextButton(
                            child: const Text("Huy Don Hang"),
                            onPressed: () {
                              ScaffoldMessenger.of(context)
                                ..removeCurrentSnackBar()
                                ..showSnackBar(const SnackBar(
                                    content: Text("Đã hủy đơn hàng")));
                            },
                          ),
                        )
                      ],
                    ));
              }))
    ]);
  }
}
