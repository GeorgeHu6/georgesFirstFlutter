import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:team_work/common/UserModel.dart';
import 'package:team_work/models/userInfo.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Flex(
      direction: Axis.vertical,
      //crossAxisAlignment: CrossAxisAlignment.center,
      // mainAxisAlignment: MainAxisAlignment.center,
      children: [
        InfoDisplay(),
        SizedBox(
          height: 50,
        ),
        InfoContent()
      ],
    );
  }
}

// healthy info display subpart
class InfoDisplay extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _InfoDisplayState();
}

class _InfoDisplayState extends State<InfoDisplay> {
  var _todayWaterDrunk = 0;
  var _todayCalorios = 0;
  @override
  Widget build(BuildContext context) {
    return Flex(
      direction: Axis.horizontal,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset('imgs/ruler.png', width: 150),
        Image.asset('imgs/bottle.png', width: 200),
        Flex(
          direction: Axis.vertical,
          children: [
            Text('今日已喝水 \n$_todayWaterDrunk ml'),
            Text('今日已摄入卡路里 \n$_todayCalorios Kcal')
          ],
          crossAxisAlignment: CrossAxisAlignment.start,
        ),
      ],
    );
  }
}

class InfoContent extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _InfoContent();
}

class _InfoContent extends State<InfoContent> {
  var _age = 0;
  var _height = 0;
  var _weight = 0;
  @override
  Widget build(BuildContext context) {
    return Flex(
      direction: Axis.horizontal,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          child: Flex(
            direction: Axis.vertical,
            children: [
              Row(
                children: [
                  Text('年龄\n $_age',
                      style: TextStyle(color: Colors.black, fontSize: 20.0)),
                ],
              ),
              Row(
                children: [
                  Text('身高\n $_height',
                      style: TextStyle(color: Colors.black, fontSize: 20.0)),
                  Text('体重\n $_weight',
                      style: TextStyle(color: Colors.black, fontSize: 20.0))
                ],
              )
            ],
          ),
          decoration: BoxDecoration(
              color: Color.fromARGB(199, 176, 217, 228),
              borderRadius: BorderRadius.circular(12)),
          height: 150,
          width: 150,
          margin: EdgeInsets.only(left: 10),
          padding: EdgeInsets.all(10),
        ),
        SizedBox(
          width: 50,
        ),
        Container(
          child: Flex(
            direction: Axis.vertical,
            children: [
              Row(
                children: [
                  Column(
                    children: [
                      Text('年龄', style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w100)),
                      Text('$_age', style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold)),
                    ],
                  )
                ],
              ),
              Row(
                children: [
                  Column(
                    children: [
                      Text('身高', style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w100)),
                      Text('$_height', style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold)),
                    ],
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Column(
                    children: [
                      Text('体重', style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w100)),
                      Text('$_weight', style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold)),
                    ],
                  )
                ],
              )
            ],
          ),
          decoration: BoxDecoration(
              color: Color.fromARGB(199, 176, 217, 228),
              borderRadius: BorderRadius.circular(12)),
          height: 150,
          width: 150,
          margin: EdgeInsets.only(left: 10),
          padding: EdgeInsets.all(10),
        ),
      ],
    );
  }
}
