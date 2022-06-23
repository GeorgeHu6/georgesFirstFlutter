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
    return Column(
      children: [
        Container(
          width: 3200,
          height: 13,
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
                  color: Colors.lightBlueAccent,
                  borderRadius: BorderRadius.all(Radius.circular(1000.0))),
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
            Text(
              "368",
              style: TextStyle(
                  color: Color.fromARGB(255, 12, 99, 169),
                  fontSize: 17.0,
                  height: 1.1),
            ),
            Padding(padding: EdgeInsets.only(right: 60)),
            Text(
              "78836",
              style: TextStyle(
                  color: Color.fromARGB(255, 12, 99, 169),
                  fontSize: 17.0,
                  height: 1.1),
            ),
            Padding(padding: EdgeInsets.only(right: 60)),
            Text(
              "265",
              style: TextStyle(
                  color: Color.fromARGB(255, 12, 99, 169),
                  fontSize: 17.0,
                  height: 1.1),
            ),
          ],
        ),
        Padding(padding: EdgeInsets.symmetric(vertical: 2)),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Padding(padding: EdgeInsets.only(right: 52)),
            Text(
              "关注",
              style: TextStyle(
                  color: Color.fromARGB(255, 12, 99, 169),
                  fontSize: 11.0,
                  height: 1.0),
            ),
            Padding(padding: EdgeInsets.only(right: 80)),
            Text(
              "粉丝",
              style: TextStyle(
                  color: Color.fromARGB(255, 12, 99, 169),
                  fontSize: 11.0,
                  height: 1.0),
            ),
            Padding(padding: EdgeInsets.only(right: 90)),
            Text(
              "收藏",
              style: TextStyle(
                  color: Color.fromARGB(255, 12, 99, 169),
                  fontSize: 11.0,
                  height: 1.0),
            ),
          ],
        ),
        Padding(padding: EdgeInsets.symmetric(vertical: 5)),
        Padding(padding: EdgeInsets.only(right: 70)),
        Container(
          width: 350,
          height: 110,
          decoration: BoxDecoration(
              color: Colors.lightBlueAccent,
              borderRadius: BorderRadius.all(Radius.circular(15.0))),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(padding: EdgeInsets.symmetric(vertical: 5)),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(padding: EdgeInsets.only(right: 50)),
                  Icon(
                    Icons.photo,
                    color: Color.fromARGB(255, 6, 101, 179),
                    size: 28,
                  ),
                  Padding(padding: EdgeInsets.only(right: 50)),
                  Icon(
                    Icons.local_grocery_store,
                    color: Color.fromARGB(255, 6, 101, 179),
                    size: 28,
                  ),
                  Padding(padding: EdgeInsets.only(right: 50)),
                  Icon(
                    Icons.sentiment_satisfied,
                    color: Color.fromARGB(255, 6, 101, 179),
                    size: 28,
                  ),
                  Padding(padding: EdgeInsets.only(right: 50)),
                  Icon(
                    Icons.schedule,
                    color: Color.fromARGB(255, 6, 101, 179),
                    size: 28,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(padding: EdgeInsets.only(right: 53)),
                  Text(
                    "日常记录",
                    style: TextStyle(
                        color: Color.fromARGB(255, 12, 99, 169),
                        fontSize: 11.0,
                        height: 1.0),
                  ),
                  Padding(padding: EdgeInsets.only(right: 60)),
                  Text(
                    "购物车",
                    style: TextStyle(
                        color: Color.fromARGB(255, 12, 99, 169),
                        fontSize: 11.0,
                        height: 1.0),
                  ),
                  Padding(padding: EdgeInsets.only(right: 62)),
                  Text(
                    "我的最爱",
                    style: TextStyle(
                        color: Color.fromARGB(255, 12, 99, 169),
                        fontSize: 11.0,
                        height: 1.0),
                  ),
                  Padding(padding: EdgeInsets.only(right: 62)),
                  Text(
                    "历史",
                    style: TextStyle(
                        color: Color.fromARGB(255, 12, 99, 169),
                        fontSize: 11.0,
                        height: 1.0),
                  ),
                ],
              ),
              Padding(padding: EdgeInsets.symmetric(vertical: 5)),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(padding: EdgeInsets.only(right: 50)),
                  Icon(
                    Icons.receipt,
                    color: Color.fromARGB(255, 6, 101, 179),
                    size: 28,
                  ),
                  Padding(padding: EdgeInsets.only(right: 50)),
                  Icon(
                    Icons.local_mall,
                    color: Color.fromARGB(255, 6, 101, 179),
                    size: 28,
                  ),
                  Padding(padding: EdgeInsets.only(right: 50)),
                  Icon(
                    Icons.message,
                    color: Color.fromARGB(255, 6, 101, 179),
                    size: 28,
                  ),
                  Padding(padding: EdgeInsets.only(right: 50)),
                  Icon(
                    Icons.star_border,
                    color: Color.fromARGB(255, 6, 101, 179),
                    size: 28,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(padding: EdgeInsets.only(right: 53)),
                  Text(
                    "优惠券",
                    style: TextStyle(
                        color: Color.fromARGB(255, 12, 99, 169),
                        fontSize: 11.0,
                        height: 1.0),
                  ),
                  Padding(padding: EdgeInsets.only(right: 68)),
                  Text(
                    "商城",
                    style: TextStyle(
                        color: Color.fromARGB(255, 12, 99, 169),
                        fontSize: 11.0,
                        height: 1.0),
                  ),
                  Padding(padding: EdgeInsets.only(right: 68)),
                  Text(
                    "消息",
                    style: TextStyle(
                        color: Color.fromARGB(255, 12, 99, 169),
                        fontSize: 11.0,
                        height: 1.0),
                  ),
                  Padding(padding: EdgeInsets.only(right: 68)),
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
        ),
      ],
    );
  }
}
