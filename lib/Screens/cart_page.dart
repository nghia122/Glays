import '../widgets/widgets.dart';
import 'package:flutter/material.dart';

var cities = [
  "TP.Hồ Chí Minh",
  "Hà Nội",
  "TP.Phan Thiết",
  "Vũng Tàu",
  "Cần Thơ",
  "Bến Tre"
];
var districts = [
  "Quận 1",
  "Quận 2",
  "Quận 3",
  "Quận 4",
  "Quận 5",
  "Quận 6",
  "Quận 7",
  "Quận 8",
];
var wards = [
  "Phan rí cửa",
  "Phường 1",
  "Phường 2",
  "Phường 3",
  "Phường 4",
  "Phường 5",
  "Phường 6",
  "Phường 7",
];
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
                    fontSize: 15.0,
                    color: Colors.red)),
            Container(
              child: Row(
                children: <Widget>[
                  Text("Số lượng: "),
                  IconButton(
                    icon: Icon(
                      Icons.remove_circle_outline,
                    ),
                    iconSize: 20,
                    onPressed: () {},
                  ),
                  Text(quantity),
                  IconButton(
                    icon: Icon(
                      Icons.add_circle_outline,
                    ),
                    iconSize: 20,
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          ],
        ),
        Container(
            padding: EdgeInsets.all(10.0),
            child: Column(children: <Widget>[Text("Đơn giá:"), Text(price)])),
        IconButton(
            onPressed: () {},
            icon: IconButton(
              icon: Icon(Icons.delete),
              onPressed: () {},
            ))
      ],
    ),
  );
}

class Cart extends StatelessWidget {
  String? item;
  String? selectedCity = "TP.Hồ Chí Minh";
  String? selectedDistrict = "Quận 1";
  String? selectedWard = "Phường 7";
  var count = "250.000.000đ";
  var _street = new TextEditingController();
  var _nameOrder = new TextEditingController();
  var _phoneNumber = new TextEditingController();

  //static var routename;
  static String routeName = "/cart";
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
              IconButton(
                  icon: Icon(Icons.arrow_left),
                  onPressed: () {
                    Navigator.pop(context);
                  }),
              const SizedBox(
                height: 10,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 5.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Chọn địa chỉ giao hàng",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.white),
                    ),
                    _product("images/1.jpg", "name", 1, "250.000.000"),
                    Container(
                      color: Colors.white,
                      child: Column(
                        children: <Widget>[
                          Row(
                            // ignore: prefer_const_literals_to_create_immutables
                            children: <Widget>[
                              Container(
                                padding: EdgeInsets.all(10),
                                width: 175,
                                child: DropdownButton(
                                  // Initial Value
                                  value: selectedCity,
                                  isExpanded: true,
                                  // Down Arrow Icon
                                  icon: const Icon(Icons.keyboard_arrow_down),

                                  // Array list of items
                                  items: cities.map((String items) {
                                    return DropdownMenuItem(
                                      value: items,
                                      child: Text(items),
                                    );
                                  }).toList(),
                                  // After selecting the desired option,it will
                                  // change button value to selected value
                                  onChanged: (value) {
                                    selectedCity = value as String?;
                                  },
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.all(10),
                                width: 300,
                                child: DropdownButton(
                                  // Initial Value
                                  value: selectedDistrict,
                                  isExpanded: true,
                                  // Down Arrow Icon
                                  icon: const Icon(Icons.keyboard_arrow_down),

                                  // Array list of items
                                  items: districts.map((String items) {
                                    return DropdownMenuItem(
                                      value: items,
                                      child: Text(items),
                                    );
                                  }).toList(),
                                  // After selecting the desired option,it will
                                  // change button value to selected value
                                  onChanged: (value) {
                                    selectedDistrict = value as String?;
                                  },
                                ),
                              ),
                            ],
                          ),
                          Container(
                            padding: EdgeInsets.all(8.0),
                            width: double.maxFinite,
                            child: DropdownButton(
                              // Initial Value
                              value: selectedWard,
                              isExpanded: true,
                              // Down Arrow Icon
                              icon: const Icon(Icons.keyboard_arrow_down),

                              // Array list of items
                              items: wards.map((String items) {
                                return DropdownMenuItem(
                                  value: items,
                                  child: Text(items),
                                );
                              }).toList(),
                              // After selecting the desired option,it will
                              // change button value to selected value
                              onChanged: (value) {
                                selectedWard = value as String?;
                              },
                            ),
                          ),
                          Container(
                              padding: EdgeInsets.all(15),
                              child: TextField(
                                decoration: InputDecoration(
                                  hintText: "Số nhà - Tên đường",
                                ),
                                controller: _street,
                              )),
                          Container(
                            padding: EdgeInsets.all(15),
                            child: Row(
                              children: <Widget>[
                                Container(
                                  width: 100,
                                  child: TextField(
                                    decoration: InputDecoration(
                                      hintText: "SĐT",
                                    ),
                                    controller: _phoneNumber,
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.only(left: 30),
                                  width: 360,
                                  child: TextField(
                                    decoration: InputDecoration(
                                      hintText: "Tên người nhận",
                                    ),
                                    controller: _nameOrder,
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ]))),
        bottomSheet: BottomSheet(
            onClosing: () {},
            builder: (context) {
              return Container(
                padding: EdgeInsets.all(5.0),
                height: 100,
                child: Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text("Tổng tiền:"),
                        Text(
                          count,
                          style: TextStyle(
                              color: Colors.red,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        )
                      ],
                    ),
                    Container(
                        padding: EdgeInsets.all(10),
                        width: double.maxFinite,
                        height: 50,
                        child: ElevatedButton(
                            onPressed: () {
                              ScaffoldMessenger.of(context)
                                ..removeCurrentSnackBar()
                                ..showSnackBar(const SnackBar(
                                    content: Text("Đã thanh toán giỏ hàng")));
                            },
                            child: Text("Thanh Toán")))
                  ],
                ),
              );
            }),
      )
    ]);
  }
}
