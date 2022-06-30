import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../models/drinkingInfo.dart';

DrinkingInfo drinkingInfo = DrinkingInfo();

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          InfoDisplay(),
          SizedBox(
            height: 50,
          ),
          InfoContent()
        ],
      ),
    );
  }
}

// 上方的图形及状态显示
class InfoDisplay extends StatefulWidget {
  const InfoDisplay({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _InfoDisplayState();
}

class _InfoDisplayState extends State<InfoDisplay> {
  late SharedPreferences _prefs;
  var _todayWaterDrunk = 0;
  var _todayCalorios = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset('assets/ruler.png', width: 50),
        Image.asset('assets/bottle.png', width: 200),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '今日已喝水 \n$_todayWaterDrunk ml',
              style: const TextStyle(fontSize: 15),
            ),
            Text(
              '今日已摄入卡路里 \n$_todayCalorios Kcal',
              style: const TextStyle(fontSize: 15),
            )
          ],
        )
      ],
    );
  }
}

// 下方的两块卡片
class InfoContent extends StatefulWidget {
  const InfoContent({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _InfoContent();
}

class _InfoContent extends State<InfoContent> {
  var _age = 0;
  var _height = 0;
  var _weight = 0;
  var _score = 60;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
              color: const Color.fromARGB(199, 176, 217, 228),
              borderRadius: BorderRadius.circular(12)),
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: const [
                  Icon(Icons.info_outline),
                  Text('基本信息'),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      const Text('年龄',
                          style: TextStyle(
                              fontSize: 20.0, fontWeight: FontWeight.w100)),
                      Text('$_age',
                          style: const TextStyle(
                              fontSize: 20.0, fontWeight: FontWeight.bold)),
                    ],
                  )
                ],
              ),
              Row(
                children: [
                  Column(
                    children: [
                      const Text('身高',
                          style: TextStyle(
                              fontSize: 20.0, fontWeight: FontWeight.w100)),
                      Text('$_height',
                          style: const TextStyle(
                              fontSize: 20.0, fontWeight: FontWeight.bold)),
                    ],
                  ),
                  const SizedBox(
                    width: 30,
                  ),
                  Column(
                    children: [
                      const Text('体重',
                          style: TextStyle(
                              fontSize: 20.0, fontWeight: FontWeight.w100)),
                      Text('$_weight',
                          style: const TextStyle(
                              fontSize: 20.0, fontWeight: FontWeight.bold)),
                    ],
                  )
                ],
              )
            ],
          ),
        ),
        const SizedBox(
          width: 50,
        ),
        Container(
          decoration: BoxDecoration(
              color: const Color.fromARGB(199, 176, 217, 228),
              borderRadius: BorderRadius.circular(12)),
          margin: const EdgeInsets.only(left: 10),
          padding: const EdgeInsets.all(10),
          child: CircularPercentIndicator(
            radius: 60.0,
            lineWidth: 10.0,
            percent: _score / 100,
            center: Text("$_score分"),
            progressColor: Colors.blue,
          ),
        ),
      ],
    );
  }
}
