import 'package:flutter_glays/main.dart';
import 'package:flutter_glays/widgets/backgroud_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'HistoryOrderDetail.dart';

class HistoryOrder extends StatelessWidget {
  static String routeName = "/historyorder";
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      const Backgroudimage(),
      Scaffold(
          backgroundColor: Colors.transparent,
          body: SingleChildScrollView(
              child: DefaultTabController(
                  length: 5,
                  child: SafeArea(
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                        IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: Icon(Icons.arrow_back),
                          color: Colors.white,
                          iconSize: 30.0,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          height: 50,
                          width: double.maxFinite,
                          child: TabBar(
                              indicatorColor: Colors.transparent,
                              labelColor: Colors.white,
                              unselectedLabelColor: Colors.grey,
                              labelPadding:
                                  EdgeInsets.symmetric(horizontal: 35.0),
                              isScrollable: true,
                              tabs: <Widget>[
                                Tab(
                                  child: Text(
                                    "Đang xử lý",
                                  ),
                                ),
                                Tab(
                                  child: Text(
                                    "Đã xử lý",
                                  ),
                                ),
                                Tab(
                                  child: Text(
                                    "Đang giao",
                                  ),
                                ),
                                Tab(
                                  child: Text(
                                    "Đã giao",
                                  ),
                                ),
                                Tab(
                                  child: Text(
                                    "Đã hủy",
                                  ),
                                ),
                              ]),
                        ),
                        SizedBox(height: 2),
                        Container(
                            color: Colors.white,
                            width: double.maxFinite,
                            height: double.maxFinite,
                            child: TabBarView(children: [
                              ListView.builder(
                                itemCount: 4,
                                itemBuilder: (_, index) {
                                  return Column(children: <Widget>[
                                    ShaderMask(
                                      shaderCallback: (bounds) =>
                                          LinearGradient(
                                                  colors: [
                                            Colors.blueGrey,
                                            Colors.blue
                                          ],
                                                  begin: Alignment.bottomRight,
                                                  end: Alignment.topLeft)
                                              .createShader(bounds),
                                      child: Container(
                                          //height: 100,
                                          color: Colors.white,
                                          width: double.maxFinite,
                                          padding: EdgeInsets.all(5),
                                          margin:
                                              EdgeInsets.symmetric(vertical: 5),
                                          child: TextButton(
                                            onPressed: () {
                                              Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        HistoryOrderDetail()),
                                              );
                                            },
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: <Widget>[
                                                Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: <Widget>[
                                                      Text("Người nhận: "),
                                                      Text("Lê Công Tiến |",
                                                          style: TextStyle(
                                                              fontSize: 16,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                              color: Colors
                                                                  .black)),
                                                      Text(" 19:45 21/02/2022",
                                                          style: TextStyle(
                                                              fontSize: 14,
                                                              color:
                                                                  Colors.grey)),
                                                    ]),
                                                Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: <Widget>[
                                                      Text("Nơi nhận: "),
                                                      Text(
                                                          " 83 Nguyễn Kiệm, phường 3",
                                                          style: TextStyle(
                                                              fontSize: 16,
                                                              color: Colors
                                                                  .green)),
                                                    ]),
                                                const Divider(),
                                                Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: <Widget>[
                                                      Text("Tổng tiền: "),
                                                      Text("250.000.000đ",
                                                          style: TextStyle(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                              color:
                                                                  Colors.red))
                                                    ]),
                                              ],
                                            ),
                                          )),
                                    )
                                  ]);
                                },
                              ),
                              ListView.builder(
                                itemCount: 4,
                                itemBuilder: (_, index) {
                                  return Column(children: <Widget>[
                                    ShaderMask(
                                      shaderCallback: (bounds) =>
                                          LinearGradient(
                                                  colors: [
                                            Colors.yellow,
                                            Colors.blue
                                          ],
                                                  begin: Alignment.bottomRight,
                                                  end: Alignment.topLeft)
                                              .createShader(bounds),
                                      child: Container(
                                          //height: 100,
                                          color: Colors.white,
                                          width: double.maxFinite,
                                          padding: EdgeInsets.all(5),
                                          margin:
                                              EdgeInsets.symmetric(vertical: 5),
                                          child: TextButton(
                                            onPressed: () {
                                              Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        HistoryOrderDetail()),
                                              );
                                            },
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: <Widget>[
                                                Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: <Widget>[
                                                      Text("Người nhận: "),
                                                      Text("Lê Công Tiến |",
                                                          style: TextStyle(
                                                              fontSize: 16,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                              color: Colors
                                                                  .black)),
                                                      Text(" 19:45 21/02/2022",
                                                          style: TextStyle(
                                                              fontSize: 14,
                                                              color:
                                                                  Colors.grey)),
                                                    ]),
                                                Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: <Widget>[
                                                      Text("Nơi nhận: "),
                                                      Text(
                                                          " 83 Nguyễn Kiệm, phường 3",
                                                          style: TextStyle(
                                                              fontSize: 16,
                                                              color: Colors
                                                                  .green)),
                                                    ]),
                                                const Divider(),
                                                Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: <Widget>[
                                                      Text("Tổng tiền: "),
                                                      Text("250.000.000đ",
                                                          style: TextStyle(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                              color:
                                                                  Colors.red))
                                                    ]),
                                              ],
                                            ),
                                          )),
                                    )
                                  ]);
                                },
                              ),
                              ListView.builder(
                                itemCount: 4,
                                itemBuilder: (_, index) {
                                  return Column(children: <Widget>[
                                    ShaderMask(
                                      shaderCallback: (bounds) =>
                                          LinearGradient(
                                                  colors: [
                                            Colors.orange,
                                            Colors.blue
                                          ],
                                                  begin: Alignment.bottomRight,
                                                  end: Alignment.topLeft)
                                              .createShader(bounds),
                                      child: Container(
                                          //height: 100,
                                          color: Colors.white,
                                          width: double.maxFinite,
                                          padding: EdgeInsets.all(5),
                                          margin:
                                              EdgeInsets.symmetric(vertical: 5),
                                          child: TextButton(
                                            onPressed: () {
                                              Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        HistoryOrderDetail()),
                                              );
                                            },
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: <Widget>[
                                                Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: <Widget>[
                                                      Text("Người nhận: "),
                                                      Text("Lê Công Tiến |",
                                                          style: TextStyle(
                                                              fontSize: 16,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                              color: Colors
                                                                  .black)),
                                                      Text(" 19:45 21/02/2022",
                                                          style: TextStyle(
                                                              fontSize: 14,
                                                              color:
                                                                  Colors.grey)),
                                                    ]),
                                                Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: <Widget>[
                                                      Text("Nơi nhận: "),
                                                      Text(
                                                          " 83 Nguyễn Kiệm, phường 3",
                                                          style: TextStyle(
                                                              fontSize: 16,
                                                              color: Colors
                                                                  .green)),
                                                    ]),
                                                const Divider(),
                                                Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: <Widget>[
                                                      Text("Tổng tiền: "),
                                                      Text("250.000.000đ",
                                                          style: TextStyle(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                              color:
                                                                  Colors.red))
                                                    ]),
                                              ],
                                            ),
                                          )),
                                    )
                                  ]);
                                },
                              ),
                              ListView.builder(
                                itemCount: 4,
                                itemBuilder: (_, index) {
                                  return Column(children: <Widget>[
                                    ShaderMask(
                                      shaderCallback: (bounds) =>
                                          LinearGradient(
                                                  colors: [
                                            Colors.green,
                                            Colors.blue
                                          ],
                                                  begin: Alignment.bottomRight,
                                                  end: Alignment.topLeft)
                                              .createShader(bounds),
                                      child: Container(
                                          //height: 100,
                                          color: Colors.white,
                                          width: double.maxFinite,
                                          padding: EdgeInsets.all(5),
                                          margin:
                                              EdgeInsets.symmetric(vertical: 5),
                                          child: TextButton(
                                            onPressed: () {
                                              Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        HistoryOrderDetail()),
                                              );
                                            },
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: <Widget>[
                                                Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: <Widget>[
                                                      Text("Người nhận: "),
                                                      Text("Lê Công Tiến |",
                                                          style: TextStyle(
                                                              fontSize: 16,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                              color: Colors
                                                                  .black)),
                                                      Text(" 19:45 21/02/2022",
                                                          style: TextStyle(
                                                              fontSize: 14,
                                                              color:
                                                                  Colors.grey)),
                                                    ]),
                                                Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: <Widget>[
                                                      Text("Nơi nhận: "),
                                                      Text(
                                                          " 83 Nguyễn Kiệm, phường 3",
                                                          style: TextStyle(
                                                              fontSize: 16,
                                                              color: Colors
                                                                  .green)),
                                                    ]),
                                                const Divider(),
                                                Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: <Widget>[
                                                      Text("Tổng tiền: "),
                                                      Text("250.000.000đ",
                                                          style: TextStyle(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                              color:
                                                                  Colors.red))
                                                    ]),
                                              ],
                                            ),
                                          )),
                                    )
                                  ]);
                                },
                              ),
                              ListView.builder(
                                itemCount: 4,
                                itemBuilder: (_, index) {
                                  return Column(children: <Widget>[
                                    ShaderMask(
                                      shaderCallback: (bounds) =>
                                          LinearGradient(
                                                  colors: [
                                            Colors.red,
                                            Colors.blue
                                          ],
                                                  begin: Alignment.bottomRight,
                                                  end: Alignment.topLeft)
                                              .createShader(bounds),
                                      child: Container(
                                          //height: 100,
                                          color: Colors.white,
                                          width: double.maxFinite,
                                          padding: EdgeInsets.all(5),
                                          margin:
                                              EdgeInsets.symmetric(vertical: 5),
                                          child: TextButton(
                                            onPressed: () {
                                              Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        HistoryOrderDetail()),
                                              );
                                            },
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: <Widget>[
                                                Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: <Widget>[
                                                      Text("Người nhận: "),
                                                      Text("Lê Công Tiến |",
                                                          style: TextStyle(
                                                              fontSize: 16,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                              color: Colors
                                                                  .black)),
                                                      Text(" 19:45 21/02/2022",
                                                          style: TextStyle(
                                                              fontSize: 14,
                                                              color:
                                                                  Colors.grey)),
                                                    ]),
                                                Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: <Widget>[
                                                      Text("Nơi nhận: "),
                                                      Text(
                                                          " 83 Nguyễn Kiệm, phường 3",
                                                          style: TextStyle(
                                                              fontSize: 16,
                                                              color: Colors
                                                                  .green)),
                                                    ]),
                                                const Divider(),
                                                Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: <Widget>[
                                                      Text("Tổng tiền: "),
                                                      Text("250.000.000đ",
                                                          style: TextStyle(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                              color:
                                                                  Colors.red))
                                                    ]),
                                              ],
                                            ),
                                          )),
                                    )
                                  ]);
                                },
                              ),
                            ]))
                      ])))))
    ]);
  }
}
