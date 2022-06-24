import 'dart:html';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:team_work/common/UserModel.dart';
import 'package:team_work/models/userInfo.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PersonRoute extends StatefulWidget {
  const PersonRoute({Key? key}) : super(key: key);

  @override
  _PersonRouteState createState() => _PersonRouteState();
}

class _PersonRouteState extends State<PersonRoute> {
  @override
  Widget build(BuildContext context) {
    SvgPicture set = new SvgPicture.asset("assets/小女孩头像.svg");
    SvgPicture set1 = new SvgPicture.asset("assets/男医生.svg");
    return ListView(
      children: [
        Container(
          height: 800,
          child: Column(
            children: [
              Container(
                width: 3200,
                height: 30,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.border_all, color: Colors.lightBlue),
                    Padding(
                      padding: EdgeInsets.only(right: 100),
                    ),
                    Text(
                      "个人中心",
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.lightBlue, fontSize: 18),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 120),
                    ),
                    Icon(
                      Icons.settings,
                      color: Colors.lightBlue,
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  //Padding(padding: EdgeInsets.only(left: 100)),
                  Padding(padding: EdgeInsets.symmetric(vertical: 50)),
                  Container(
                    width: 80,
                    height: 80,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(100, 176, 217, 228),
                        borderRadius:
                            BorderRadius.all(Radius.circular(1000.0))),
                    child: set,
                  ),
                  Padding(padding: EdgeInsets.only(right: 20)),
                  Text("Jeremy Zucker",
                      style: TextStyle(
                        color: Color.fromARGB(255, 12, 99, 169),
                        fontSize: 18.0,
                        height: 1.2,
                      ))
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  //Padding(padding: EdgeInsets.only(right: 70)),
                  Column(
                    children: [
                      Text(
                        "368",
                        style: TextStyle(
                            color: Color.fromARGB(255, 12, 99, 169),
                            fontSize: 17.0,
                            height: 1.1),
                      ),
                      Text(
                        "关注",
                        style: TextStyle(
                            color: Color.fromARGB(255, 12, 99, 169),
                            fontSize: 11.0,
                            height: 1.0),
                      ),
                    ],
                  ),
                  Padding(padding: EdgeInsets.only(right: 60)),
                  Column(
                    children: [
                      Text(
                        "78836",
                        style: TextStyle(
                            color: Color.fromARGB(255, 12, 99, 169),
                            fontSize: 17.0,
                            height: 1.1),
                      ),
                      Text(
                        "粉丝",
                        style: TextStyle(
                            color: Color.fromARGB(255, 12, 99, 169),
                            fontSize: 11.0,
                            height: 1.0),
                      ),
                    ],
                  ),

                  Padding(padding: EdgeInsets.only(right: 60)),
                  Column(
                    children: [
                      Text(
                        "265",
                        style: TextStyle(
                            color: Color.fromARGB(255, 12, 99, 169),
                            fontSize: 17.0,
                            height: 1.1),
                      ),
                      Text(
                        "收藏",
                        style: TextStyle(
                            color: Color.fromARGB(255, 12, 99, 169),
                            fontSize: 11.0,
                            height: 1.0),
                      ),
                    ],
                  ),
                ],
              ),
              Padding(padding: EdgeInsets.symmetric(vertical: 2)),
              Padding(padding: EdgeInsets.symmetric(vertical: 5)),
              Padding(padding: EdgeInsets.only(right: 70)),
              Container(
                width: 350,
                height: 110,
                decoration: BoxDecoration(
                    color: Color.fromARGB(100, 176, 217, 228),
                    borderRadius: BorderRadius.all(Radius.circular(15.0))),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(padding: EdgeInsets.symmetric(vertical: 5)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(padding: EdgeInsets.only(right: 40)),
                        Column(
                          children: [
                            Icon(
                              Icons.photo,
                              color: Color.fromARGB(255, 6, 101, 179),
                              size: 28,
                            ),
                            Text(
                              "日常记录",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 12, 99, 169),
                                  fontSize: 11.0,
                                  height: 1.0),
                            ),
                          ],
                        ),
                        Padding(padding: EdgeInsets.only(right: 40)),
                        Column(
                          children: [
                            Icon(
                              Icons.local_grocery_store,
                              color: Color.fromARGB(255, 6, 101, 179),
                              size: 28,
                            ),
                            Text(
                              "购物车",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 12, 99, 169),
                                  fontSize: 11.0,
                                  height: 1.0),
                            ),
                          ],
                        ),
                        Padding(padding: EdgeInsets.only(right: 40)),
                        Column(
                          children: [
                            Icon(
                              Icons.sentiment_satisfied,
                              color: Color.fromARGB(255, 6, 101, 179),
                              size: 28,
                            ),
                            Text(
                              "我的最爱",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 12, 99, 169),
                                  fontSize: 11.0,
                                  height: 1.0),
                            ),
                          ],
                        ),
                        Padding(padding: EdgeInsets.only(right: 40)),
                        Column(
                          children: [
                            Icon(
                              Icons.schedule,
                              color: Color.fromARGB(255, 6, 101, 179),
                              size: 28,
                            ),
                            Text(
                              "历史",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 12, 99, 169),
                                  fontSize: 11.0,
                                  height: 1.0),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Padding(padding: EdgeInsets.symmetric(vertical: 5)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(padding: EdgeInsets.only(right: 42)),
                        Column(
                          children: [
                            Icon(
                              Icons.receipt,
                              color: Color.fromARGB(255, 6, 101, 179),
                              size: 28,
                            ),
                            Text(
                              "优惠券",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 12, 99, 169),
                                  fontSize: 11.0,
                                  height: 1.0),
                            ),
                          ],
                        ),
                        Padding(padding: EdgeInsets.only(right: 50)),
                        Column(
                          children: [
                            Icon(
                              Icons.local_mall,
                              color: Color.fromARGB(255, 6, 101, 179),
                              size: 28,
                            ),
                            Text(
                              "商城",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 12, 99, 169),
                                  fontSize: 11.0,
                                  height: 1.0),
                            ),
                          ],
                        ),
                        Padding(padding: EdgeInsets.only(right: 50)),
                        Column(
                          children: [
                            Icon(
                              Icons.message,
                              color: Color.fromARGB(255, 6, 101, 179),
                              size: 28,
                            ),
                            Text(
                              "消息",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 12, 99, 169),
                                  fontSize: 11.0,
                                  height: 1.0),
                            ),
                          ],
                        ),
                        Padding(padding: EdgeInsets.only(right: 50)),
                        Column(
                          children: [
                            Icon(
                              Icons.star_border,
                              color: Color.fromARGB(255, 6, 101, 179),
                              size: 28,
                            ),
                            Text(
                              "评价",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 12, 99, 169),
                                  fontSize: 11.0,
                                  height: 1.0),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(padding: EdgeInsets.symmetric(vertical: 5)),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Container(
                        width: 165,
                        height: 40,
                        decoration: BoxDecoration(
                            color: Color.fromARGB(100, 176, 217, 228),
                            //borderRadius: BorderRadius.all(Radius.circular(15.0))),
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(12.0))),
                        child: (Column(
                          children: [
                            Padding(padding: EdgeInsets.symmetric(vertical: 5)),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(padding: EdgeInsets.only(right: 20)),
                                Text(
                                  "用户任务中心",
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 12, 99, 169),
                                      fontSize: 9.0,
                                      height: 1.0),
                                ),
                                Padding(padding: EdgeInsets.only(right: 45)),
                                Icon(
                                  Icons.lock_clock,
                                  color: Colors.white,
                                ),
                              ],
                            ),
                          ],
                        )),
                      ),
                      Padding(padding: EdgeInsets.symmetric(vertical: 2)),
                      Container(
                        width: 165,
                        height: 40,
                        decoration: BoxDecoration(
                            color: Color.fromARGB(100, 176, 217, 228),
                            //borderRadius: BorderRadius.all(Radius.circular(15.0))),
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(12.0))),
                        child: (Column(
                          children: [
                            Padding(padding: EdgeInsets.symmetric(vertical: 5)),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(padding: EdgeInsets.only(right: 20)),
                                Text(
                                  "健康在线",
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 12, 99, 169),
                                      fontSize: 9.0,
                                      height: 1.0),
                                ),
                                Padding(padding: EdgeInsets.only(right: 60)),
                                Icon(
                                  Icons.local_hospital,
                                  color: Colors.white,
                                ),
                              ],
                            ),
                          ],
                        )),
                      ),
                    ],
                  ),
                  Padding(padding: EdgeInsets.only(right: 5)),
                  Column(
                    children: [
                      Container(
                        width: 165,
                        height: 40,
                        decoration: BoxDecoration(
                            color: Color.fromARGB(100, 176, 217, 228),
                            //borderRadius: BorderRadius.all(Radius.circular(15.0))),
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(12.0))),
                        child: (Column(
                          children: [
                            Padding(padding: EdgeInsets.symmetric(vertical: 5)),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(padding: EdgeInsets.only(right: 20)),
                                Text(
                                  "每日签到",
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 12, 99, 169),
                                      fontSize: 9.0,
                                      height: 1.0),
                                ),
                                Padding(padding: EdgeInsets.only(right: 50)),
                                Icon(
                                  Icons.notifications,
                                  color: Colors.white,
                                ),
                              ],
                            ),
                          ],
                        )),
                      ),
                      Padding(padding: EdgeInsets.symmetric(vertical: 2)),
                      Container(
                        width: 165,
                        height: 40,
                        decoration: BoxDecoration(
                            color: Color.fromARGB(100, 176, 217, 228),
                            //borderRadius: BorderRadius.all(Radius.circular(15.0))),
                            borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(12.0))),
                        child: (Column(
                          children: [
                            Padding(padding: EdgeInsets.symmetric(vertical: 5)),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(padding: EdgeInsets.only(right: 20)),
                                Text(
                                  "兑换花朵",
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 12, 99, 169),
                                      fontSize: 9.0,
                                      height: 1.0),
                                ),
                                Padding(padding: EdgeInsets.only(right: 50)),
                                Icon(
                                  Icons.local_florist,
                                  color: Colors.white,
                                ),
                              ],
                            ),
                          ],
                        )),
                      ),
                    ],
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 350,
                    height: 40,
                    decoration: BoxDecoration(
                        color: Colors.white30,
                        //borderRadius: BorderRadius.all(Radius.circular(15.0))),
                        borderRadius:
                            BorderRadius.only(topRight: Radius.circular(12.0))),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(padding: EdgeInsets.all(4)),
                        Text(
                          "我的记录",
                          style: TextStyle(
                              color: Color.fromARGB(255, 12, 99, 169),
                              fontSize: 14.0,
                              height: 1.0),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              Padding(padding: EdgeInsets.symmetric(vertical: 1)),
              
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                      width: 165,
                      height: 80,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(100, 176, 217, 228),
                        borderRadius: BorderRadius.all(Radius.circular(15.0))
                      ),
                      child: set,
                      ),
                       Padding(padding: EdgeInsets.only(right: 20)),
                  Container(
                      width: 165,
                      height: 80,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(100, 176, 217, 228),
                        borderRadius: BorderRadius.all(Radius.circular(15.0))
                      ),
                      child: set),
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}
