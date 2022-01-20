import 'cart_page.dart';
import '../widgets/widgets.dart';
import 'package:flutter/material.dart';



class ProductDetail extends StatelessWidget {
  static String routeName = "/Detail";
  var binhluanController = new TextEditingController();
  String imagePath = "assets/images/1.jpg";
  String productName = "Laptop YoGa Thế Hệ Mới";
  String oldPrice = 250000000.toString();
  String newPrice = 500000000.toString();
  var likeCount = 100;
  _builder(var type, var property) {
    return Container(
        padding: EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("$type ", style: TextStyle(fontWeight: FontWeight.bold)),
            Text("$property"),
          ],
        ));
  }

  _binhLuan(String image, String name, String content, var likeCount) {
    return Container(
      padding: EdgeInsets.all(15.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          CircleAvatar(
            radius: 20.0,
            child: Image.asset(image),
          ),
          Container(
            padding: EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  name,
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
                Text(content),
                Container(
                  padding: EdgeInsets.all(5.0),
                  child: Text("$likeCount thích  "),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  get danhgia => 0;
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      const Backgroudimage(),
      Scaffold(
          backgroundColor: Colors.transparent,
          body: SingleChildScrollView(
              child: SafeArea(
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 30.0),
                  height: 50,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Icon(Icons.arrow_back),
                        iconSize: 40,
                        color: Colors.white,
                      ),
                      IconButton(
                        onPressed: () {
                          icon:
                          Icon(Icons.favorite);
                        },
                        icon: Icon(Icons.favorite_outline),
                        iconSize: 40,
                        color: Colors.red,
                      ),
                    ],
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 250,
                  margin: EdgeInsets.symmetric(horizontal: 30.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(8.0),
                        topRight: Radius.circular(8.0)),
                    color: Colors.white,
                  ),
                  child: Image.asset(
                    imagePath,
                    width: 350,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  padding: EdgeInsets.all(5.0),
                  width: double.infinity,
                  margin: EdgeInsets.symmetric(horizontal: 30.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(8.0),
                        topRight: Radius.circular(8.0)),
                    color: Colors.white,
                  ),
                  child: Text(
                    productName,
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  padding: EdgeInsets.all(5.0),
                  width: double.infinity,
                  margin: EdgeInsets.symmetric(horizontal: 30.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(8.0),
                        topRight: Radius.circular(8.0)),
                    color: Colors.white,
                  ),
                  child: Container(
                    child: Row(
                      children: <Widget>[
                        Text(
                          "Đơn giá: ",
                        ),
                        Text(
                          "$newPriceđ",
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.red),
                        ),
                        Text("$oldPriceđ",
                            style: TextStyle(fontSize: 8, color: Colors.grey)),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  child: Row(
                    children: <Widget>[
                      Container(
                        alignment: Alignment.center,
                        width: 50,
                        height: 70,
                        margin: EdgeInsets.only(left: 30.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(8.0)),
                          color: Colors.white,
                        ),
                        padding: EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Icon(Icons.thumb_up_alt_outlined),
                            Text("$likeCount")
                          ],
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        width: 385,
                        height: 70,
                        margin: EdgeInsets.only(left: 5.0, right: 30.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(8.0)),
                          color: Colors.white,
                        ),
                        padding: EdgeInsets.all(8.0),
                        child: Row(
                          children: <Widget>[
                            Icon(Icons.star_border_outlined),
                            Icon(Icons.star_border_outlined),
                            Icon(Icons.star_border_outlined),
                            Icon(Icons.star_border_outlined),
                            Icon(Icons.star_border_outlined),
                            Text("($danhgia Đánh giá)")
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 30.0),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(8.0),
                        topRight: Radius.circular(8.0)),
                    color: Colors.white,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Container(
                          padding: EdgeInsets.all(8.0),
                          child: const Text("Cấu hình",
                              style: TextStyle(
                                  fontSize: 22.5,
                                  fontWeight: FontWeight.bold))),
                      Container(
                          color: Colors.white,
                          padding: EdgeInsets.all(8.0),
                          child: Column(children: <Widget>[
                            _builder("CPU", "Apple M1"),
                            _builder("Ram", "16GB"),
                            _builder("Hardware", "SSD 256GB"),
                            _builder("Screen", "13.3 inch"),
                            _builder("Operating system", "Window 10"),
                            _builder("Year", "2022")
                          ])),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                    margin: EdgeInsets.symmetric(horizontal: 30.0),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(8.0),
                          topRight: Radius.circular(8.0)),
                      color: Colors.white,
                    ),
                    child: Column(
                      children: <Widget>[
                        Container(
                          padding: const EdgeInsets.all(8.0),
                          child: Center(
                            child: const Text("Đánh giá sản phẩm"),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.all(8.0),
                          child: Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: <Widget>[
                                IconButton(
                                    icon: Icon(Icons.star_border,
                                        color: Colors.yellow, size: 30.0),
                                    onPressed: () {}),
                                IconButton(
                                    icon: Icon(Icons.star_border,
                                        color: Colors.yellow, size: 30.0),
                                    onPressed: () {}),
                                IconButton(
                                    icon: Icon(Icons.star_border,
                                        color: Colors.yellow, size: 30.0),
                                    onPressed: () {}),
                                IconButton(
                                    icon: Icon(Icons.star_border,
                                        color: Colors.yellow, size: 30.0),
                                    onPressed: () {}),
                                IconButton(
                                    icon: Icon(Icons.star_border,
                                        color: Colors.yellow, size: 30.0),
                                    onPressed: () {})
                              ],
                            ),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.all(8.0),
                          child: Center(
                              child: Column(
                            children: [
                              const Text("Hãy đánh giá"),
                              const Text("để chúng tôi cải thiện sản phẩm")
                            ],
                          )),
                        )
                      ],
                    )),
                const SizedBox(
                  height: 10,
                ),
                Container(
                    margin: EdgeInsets.symmetric(horizontal: 30.0),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(8.0),
                          topRight: Radius.circular(8.0)),
                      color: Colors.white,
                    ),
                    child: Column(
                      children: <Widget>[
                        Container(
                            padding: EdgeInsets.all(8.0),
                            color: Colors.white,
                            child: Column(
                              children: <Widget>[
                                TextField(
                                  decoration: InputDecoration(
                                    hintText: "Bình Luận",
                                    border: OutlineInputBorder(),
                                  ),
                                  controller: binhluanController,
                                ),
                              ],
                            )),
                        _binhLuan("images/1.jpg", "Alex",
                            "Máy tính đã rẻ mà còn đẹp nữa", 100),
                      ],
                    ))
              ]))),
          bottomSheet: BottomSheet(
              onClosing: () {},
              builder: (context) {
                return Container(
                  height: 50,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.all(5.0),
                        width: 225,
                        child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => Cart()),
                              );
                            },
                            child: Text("Mua ngay")),
                      ),
                      Container(
                          padding: EdgeInsets.all(5.0),
                          width: 225,
                          child: ElevatedButton(
                              onPressed: () {
                                ScaffoldMessenger.of(context)
                                  ..removeCurrentSnackBar()
                                  ..showSnackBar(const SnackBar(
                                      content: Text("Đã thêm vào giỏ hàng")));
                              },
                              child: Icon(Icons.shopping_cart_outlined)))
                    ],
                  ),
                );
              })),
    ]);
  }
}
