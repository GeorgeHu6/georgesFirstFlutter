import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:provider/provider.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:percent_indicator/percent_indicator.dart';
import '../common/UserModel.dart';
import '../models/userInfo.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DataPage extends StatefulWidget {
  const DataPage({Key? key}) : super(key: key);

  @override
  State<DataPage> createState() => _DataPageState();

}

class _DataPageState extends State<DataPage> {
  search(value) {
    print("搜索的值为：$value");
  }
  @override
  Widget build(BuildContext context) {
    var userinfo = Provider.of<UserModel>(context).user;
    setState(() {

    });

    return ListView(

      children: [
        Container(
          height: 800,
          child: Column(
            children: [
              Container(
                width: 3200,
                height: 50,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 45),
                    ),
                    Text(
                      "结果说明",
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.lightBlue, fontSize: 11),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 95),
                    ),
                    Text(
                      "统计分析",
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.lightBlue, fontSize: 18),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 105),
                    ),
                    IconButton(
                      icon: Icon(
                        Icons.bookmark,
                        color: Colors.lightBlue,
                      ),

                      onPressed: () {},
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 31),
                    ),
                  ],
                ),
              ),

              //白底
              Container(
                width: 343,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.white54,
                  borderRadius: BorderRadius.circular(6.0),
                ),
                child:Row(
                    children: [


                      IconButton(
                          icon:Icon(Icons.search),
                          onPressed: (){
                            print('开始搜索');
                          }
                      ),
                      Text(' 健康分析',style: TextStyle(fontSize: 15,color: Colors.grey),),
                    ]
                ),
              ),
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 40,
                      height: 20,
                      decoration: BoxDecoration(
                        color: Colors.orange,
                        borderRadius: BorderRadius.circular(6.0),
                      ),
                      child:Row(
                          children: [
                            Text(' 数据',style: TextStyle(fontSize: 15,color: Colors.black),),
                          ]
                      ),
                    ),
                    Text('    计划',style: TextStyle(fontSize: 15,color: Colors.black),),

                  ]
              ),
              Padding(padding: EdgeInsets.symmetric(vertical: 5)),
              Padding(padding: EdgeInsets.only(right: 70)),
              Container(
                width: 350,
                height: 140,
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
                        Container(
                          margin: const EdgeInsets.only(left: 10),
                          padding: const EdgeInsets.all(10),
                            child: CircularPercentIndicator(
                            radius: 50.0,
                            lineWidth: 10.0,
                            percent: 50 / 100,
                            center: Text("50%", style: const TextStyle(fontSize: 40.0),),
                            progressColor: Colors.blue,
                          ),
                        ),
                        Padding(padding: EdgeInsets.only(right: 30)),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '今 日 饮 水 量 \n',
                              style: const TextStyle(fontSize: 12),
                            ),
                            Text(
                              '         白开水 热量含量0.0 千卡/100g\n',
                              style: const TextStyle(fontSize: 9),
                            ),
                            Text(
                              '         能量       ——  ——  ——  低',
                              style: const TextStyle(fontSize: 9),
                            ),
                            Text(
                              '         蛋白质   ——  ——  ——  低 \n',
                              style: const TextStyle(fontSize: 9),
                            ),
                            Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(padding: EdgeInsets.only(left: 45)),
                                  Container(
                                    width: 50,
                                    height: 18,
                                    decoration: BoxDecoration(
                                      color: Colors.orange,
                                      borderRadius: BorderRadius.circular(6.0),
                                    ),
                                    child:Row(
                                        children: [
                                          Text(' 详细成分>',style: TextStyle(fontSize: 9,color: Colors.black),),
                                        ]
                                    ),
                                  ),
                                  ]
                            )

                          ],
                        )
                        ]
                    ),

                  ],
                ),
              ),
              Padding(padding: EdgeInsets.symmetric(vertical: 5)),
              Container(
                width: 350,
                height: 40,
                decoration: BoxDecoration(
                    color: Color.fromARGB(100, 176, 217, 228),
                    borderRadius: BorderRadius.all(Radius.circular(15.0))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(padding: EdgeInsets.only(left: 10)),
                    IconButton(
                      icon: Icon(
                        Icons.local_drink,
                        color: Colors.lightBlue,
                      ),

                      onPressed: () {},
                    ),
                    Container(
                      width: 2,
                      height: 40,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(3.0),
                      ),
                    ),
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                            Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text('    实际饮水量',style: TextStyle(fontSize: 9,color: Colors.black),),
                                  Padding(
                                    padding: EdgeInsets.only(right: 180),
                                  ),
                                  Text('650ml/1000ml',style: TextStyle(fontSize: 9,color: Colors.black),),

                                  ]
                            ),
                          Padding(padding: EdgeInsets.symmetric(vertical: 2)),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text('    ',style: TextStyle(fontSize: 9,color: Colors.black),),
                                SizedBox(
                                  height: 10.0,
                                  width: 280.0,
                                  // 圆角矩形剪裁（`ClipRRect`）组件，使用圆角矩形剪辑其子项的组件。
                                  child:
                                  ClipRRect(
                                    // 边界半径（`borderRadius`）属性，圆角的边界半径。
                                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                                    child: LinearProgressIndicator(
                                      value:0.7,
                                      backgroundColor: Color(0xffFFFFFF),

                                    ),
                                  ),
                                ),

                                ]
                          )





                          ]
                    )

                  ],
                ),
              ),
              Padding(padding: EdgeInsets.symmetric(vertical: 5)),
              Container(
                width: 350,
                height: 40,
                decoration: BoxDecoration(
                    color: Color.fromARGB(100, 176, 217, 228),
                    borderRadius: BorderRadius.all(Radius.circular(15.0))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(padding: EdgeInsets.only(left: 10)),
                    IconButton(
                      icon: Icon(
                        Icons.local_drink,
                        color: Colors.lightBlue,
                      ),

                      onPressed: () {},
                    ),
                    Container(
                      width: 2,
                      height: 40,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(3.0),
                      ),
                    ),
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text('    健康饮水量',style: TextStyle(fontSize: 9,color: Colors.black),),
                                Padding(
                                  padding: EdgeInsets.only(right: 180),
                                ),
                                Text('850ml/1000ml',style: TextStyle(fontSize: 9,color: Colors.black),),

                              ]
                          ),
                          Padding(padding: EdgeInsets.symmetric(vertical: 2)),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text('    ',style: TextStyle(fontSize: 9,color: Colors.black),),
                                SizedBox(
                                  height: 10.0,
                                  width: 280.0,
                                  // 圆角矩形剪裁（`ClipRRect`）组件，使用圆角矩形剪辑其子项的组件。
                                  child:
                                  ClipRRect(
                                    // 边界半径（`borderRadius`）属性，圆角的边界半径。
                                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                                    child: LinearProgressIndicator(
                                      value:0.85,
                                      backgroundColor: Color(0xffFFFFFF),

                                    ),
                                  ),
                                ),

                              ]
                          )





                        ]
                    )

                  ],
                ),
              ),
              Padding(padding: EdgeInsets.symmetric(vertical: 5)),
              Container(
                width: 350,
                height: 40,
                decoration: BoxDecoration(
                    color: Color.fromARGB(100, 176, 217, 228),
                    borderRadius: BorderRadius.all(Radius.circular(15.0))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(padding: EdgeInsets.only(left: 10)),
                    IconButton(
                      icon: Icon(
                        Icons.local_drink,
                        color: Colors.lightBlue,
                      ),

                      onPressed: () {},
                    ),
                    Container(
                      width: 2,
                      height: 40,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(3.0),
                      ),
                    ),
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text('    达标饮水量',style: TextStyle(fontSize: 9,color: Colors.black),),
                                Padding(
                                  padding: EdgeInsets.only(right: 180),
                                ),
                                Text('850ml/1500ml',style: TextStyle(fontSize: 9,color: Colors.black),),

                              ]
                          ),
                          Padding(padding: EdgeInsets.symmetric(vertical: 2)),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text('    ',style: TextStyle(fontSize: 9,color: Colors.black),),
                                SizedBox(
                                  height: 10.0,
                                  width: 280.0,
                                  // 圆角矩形剪裁（`ClipRRect`）组件，使用圆角矩形剪辑其子项的组件。
                                  child:
                                  ClipRRect(
                                    // 边界半径（`borderRadius`）属性，圆角的边界半径。
                                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                                    child: LinearProgressIndicator(
                                      value:0.5,
                                      backgroundColor: Color(0xffFFFFFF),

                                    ),
                                  ),
                                ),

                              ]
                          )





                        ]
                    )

                  ],
                ),
              ),
              Padding(padding: EdgeInsets.symmetric(vertical: 5)),
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 58,
                      height: 20,
                      decoration: BoxDecoration(
                        color: Colors.orange,
                        borderRadius: BorderRadius.circular(6.0),
                      ),
                      child:Row(
                          children: [
                            Text(' 饮水曲线图',style: TextStyle(fontSize: 10,color: Colors.black),),
                          ]
                      ),
                    ),


                  ]
              ),
              Padding(padding: EdgeInsets.symmetric(vertical: 5)),
              Container(
                width: 350,
                height: 300,
                decoration: BoxDecoration(
                    color: Color.fromARGB(100, 176, 217, 228),
                    borderRadius: BorderRadius.all(Radius.circular(15.0))),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [

                            Padding(padding: EdgeInsets.only(left: 10)),
                            Text('    \n',style: TextStyle(fontSize: 12,color: Colors.black),),
                            Text('    检测时间段饮水量',style: TextStyle(fontSize: 10,color: Colors.black),),

                          ]
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [

                            Padding(padding: EdgeInsets.only(left: 14)),
                            Text('          8:00',style: TextStyle(fontSize: 9,color: Colors.black),),
                            Text('       9:00',style: TextStyle(fontSize: 9,color: Colors.black),),
                            Text('       10:00',style: TextStyle(fontSize: 9,color: Colors.black),),
                            Text('       11:00',style: TextStyle(fontSize: 9,color: Colors.black),),
                            Text('       12:00',style: TextStyle(fontSize: 9,color: Colors.black),),
                            Text('       13:00',style: TextStyle(fontSize: 9,color: Colors.black),),
                            Text('       14:00',style: TextStyle(fontSize: 9,color: Colors.black),),
                            Text('       15:00',style: TextStyle(fontSize: 9,color: Colors.black),),

                          ]
                      ),
                      Padding(padding: EdgeInsets.symmetric(vertical: 5)),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(padding: EdgeInsets.only(left: 45)),
                            Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    width: 2,
                                    height: 50,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(6.0),
                                    ),
                                  ),
                                  Container(
                                    width: 3,
                                    height: 4,
                                    decoration: BoxDecoration(
                                        color: Colors.blue,
                                        borderRadius: BorderRadius.all(Radius.circular(3))),
                                  ),
                                  Container(
                                    width: 2,
                                    height: 160,
                                    decoration: BoxDecoration(
                                      color: Colors.blue,
                                      borderRadius: BorderRadius.circular(6.0),
                                    ),
                                  ),

                                  ]
                            ),
                            Container(
                              width: 32,
                              height: 210,
                              child: CustomPaint(
                                size: Size(20, 20),
                                painter: MyPainter1(),
                                isComplex: false,
                                willChange: false,
                                child: Container(),
                              ),
                            ),
                            Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    width: 2,
                                    height: 30,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(6.0),
                                    ),
                                  ),
                                  Container(
                                    width: 3,
                                    height: 4,
                                    decoration: BoxDecoration(
                                        color: Colors.blue,
                                        borderRadius: BorderRadius.all(Radius.circular(3))),
                                  ),
                                  Container(
                                    width: 2,
                                    height: 180,
                                    decoration: BoxDecoration(
                                      color: Colors.blue,
                                      borderRadius: BorderRadius.circular(6.0),
                                    ),
                                  ),

                                ]
                            ),
                            Container(
                              width: 31,
                              height: 210,
                              child: CustomPaint(
                                size: Size(20, 20),
                                painter: MyPainter2(),
                                isComplex: false,
                                willChange: false,
                                child: Container(),
                              ),
                            ),
                            Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    width: 2,
                                    height: 60,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(6.0),
                                    ),
                                  ),
                                  Container(
                                    width: 3,
                                    height: 4,
                                    decoration: BoxDecoration(
                                        color: Colors.blue,
                                        borderRadius: BorderRadius.all(Radius.circular(3))),
                                  ),
                                  Container(
                                    width: 2,
                                    height: 150,
                                    decoration: BoxDecoration(
                                      color: Colors.blue,
                                      borderRadius: BorderRadius.circular(6.0),
                                    ),
                                  ),

                                ]
                            ),
                            Container(
                              width: 35,
                              height: 210,
                              child: CustomPaint(
                                size: Size(20, 20),
                                painter: MyPainter3(),
                                isComplex: false,
                                willChange: false,
                                child: Container(),
                              ),
                            ),
                            Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    width: 2,
                                    height: 20,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(6.0),
                                    ),
                                  ),
                                  Container(
                                    width: 3,
                                    height: 4,
                                    decoration: BoxDecoration(
                                        color: Colors.blue,
                                        borderRadius: BorderRadius.all(Radius.circular(3))),
                                  ),
                                  Container(
                                    width: 2,
                                    height: 190,
                                    decoration: BoxDecoration(
                                      color: Colors.blue,
                                      borderRadius: BorderRadius.circular(6.0),
                                    ),
                                  ),

                                ]
                            ),
                            Container(
                              width: 35,
                              height: 210,
                              child: CustomPaint(
                                size: Size(20, 20),
                                painter: MyPainter4(),
                                isComplex: false,
                                willChange: false,
                                child: Container(),
                              ),
                            ),
                            Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    width: 2,
                                    height: 30,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(6.0),
                                    ),
                                  ),
                                  Container(
                                    width: 3,
                                    height: 4,
                                    decoration: BoxDecoration(
                                        color: Colors.blue,
                                        borderRadius: BorderRadius.all(Radius.circular(3))),
                                  ),
                                  Container(
                                    width: 2,
                                    height: 180,
                                    decoration: BoxDecoration(
                                      color: Colors.blue,
                                      borderRadius: BorderRadius.circular(6.0),
                                    ),
                                  ),

                                ]
                            ),
                            Container(
                              width: 35,
                              height: 210,
                              child: CustomPaint(
                                size: Size(20, 20),
                                painter: MyPainter5(),
                                isComplex: false,
                                willChange: false,
                                child: Container(),
                              ),
                            ),
                            Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    width: 2,
                                    height: 25,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(6.0),
                                    ),
                                  ),
                                  Container(
                                    width: 3,
                                    height: 4,
                                    decoration: BoxDecoration(
                                        color: Colors.blue,
                                        borderRadius: BorderRadius.all(Radius.circular(3))),
                                  ),
                                  Container(
                                    width: 2,
                                    height: 185,
                                    decoration: BoxDecoration(
                                      color: Colors.blue,
                                      borderRadius: BorderRadius.circular(6.0),
                                    ),
                                  ),

                                ]
                            ),
                            Container(
                              width: 35,
                              height: 210,
                              child: CustomPaint(
                                size: Size(20, 20),
                                painter: MyPainter6(),
                                isComplex: false,
                                willChange: false,
                                child: Container(),
                              ),
                            ),
                            Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    width: 2,
                                    height: 20,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(6.0),
                                    ),
                                  ),
                                  Container(
                                    width: 3,
                                    height: 4,
                                    decoration: BoxDecoration(
                                        color: Colors.blue,
                                        borderRadius: BorderRadius.all(Radius.circular(3))),
                                  ),

                                  Container(
                                    width: 2,
                                    height: 190,
                                    decoration: BoxDecoration(
                                      color: Colors.blue,
                                      borderRadius: BorderRadius.circular(6.0),
                                    ),
                                  ),

                                ]
                            ),
                            Container(
                              width: 35,
                              height: 210,
                              child: CustomPaint(
                                size: Size(20, 20),
                                painter: MyPainter7(),
                                isComplex: false,
                                willChange: false,
                                child: Container(),
                              ),
                            ),
                            Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    width: 2,
                                    height: 40,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(6.0),
                                    ),
                                  ),
                                  Container(
                                    width: 3,
                                    height: 4,
                                    decoration: BoxDecoration(
                                        color: Colors.blue,
                                        borderRadius: BorderRadius.all(Radius.circular(3))),
                                  ),
                                  Container(
                                    width: 2,
                                    height: 170,
                                    decoration: BoxDecoration(
                                      color: Colors.blue,
                                      borderRadius: BorderRadius.circular(6.0),
                                    ),
                                  ),

                                ]
                            ),
                          ]
                      ),
                    ]
                ),
              ),

            ],
          ),
        )
      ],
    );
  }
}
class MyPainter7 extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    //画背景
    var paint = Paint()
      ..isAntiAlias = true
      ..strokeWidth=2.0
      ..color=Colors.blueAccent
      ..invertColors=false;

    double sX=0.0;
    double eX=35.0;
    double sY=20.0;
    double eY=40.0;
    canvas.drawLine(Offset(sX, sY), Offset(eX, eY), paint);

  }

  //在实际场景中正确利用此回调可以避免重绘开销，本示例我们简单的返回true
  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}
class MyPainter6 extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    //画背景
    var paint = Paint()
      ..isAntiAlias = true
      ..strokeWidth=2.0
      ..color=Colors.blueAccent
      ..invertColors=false;

    double sX=0.0;
    double eX=35.0;
    double sY=25.0;
    double eY=20.0;
    canvas.drawLine(Offset(sX, sY), Offset(eX, eY), paint);

  }

  //在实际场景中正确利用此回调可以避免重绘开销，本示例我们简单的返回true
  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}
class MyPainter5 extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    //画背景
    var paint = Paint()
      ..isAntiAlias = true
      ..strokeWidth=2.0
      ..color=Colors.blueAccent
      ..invertColors=false;

    double sX=0.0;
    double eX=35.0;
    double sY=30.0;
    double eY=25.0;
    canvas.drawLine(Offset(sX, sY), Offset(eX, eY), paint);

  }

  //在实际场景中正确利用此回调可以避免重绘开销，本示例我们简单的返回true
  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}
class MyPainter4 extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    //画背景
    var paint = Paint()
      ..isAntiAlias = true
      ..strokeWidth=2.0
      ..color=Colors.blueAccent
      ..invertColors=false;

    double sX=0.0;
    double eX=35.0;
    double sY=20.0;
    double eY=30.0;
    canvas.drawLine(Offset(sX, sY), Offset(eX, eY), paint);

  }

  //在实际场景中正确利用此回调可以避免重绘开销，本示例我们简单的返回true
  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}
class MyPainter3 extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    //画背景
    var paint = Paint()
      ..isAntiAlias = true
      ..strokeWidth=2.0
      ..color=Colors.blueAccent
      ..invertColors=false;

    double sX=0.0;
    double eX=35.0;
    double sY=60.0;
    double eY=20.0;
    canvas.drawLine(Offset(sX, sY), Offset(eX, eY), paint);

  }

  //在实际场景中正确利用此回调可以避免重绘开销，本示例我们简单的返回true
  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}
class MyPainter2 extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    //画背景
    var paint = Paint()
      ..isAntiAlias = true
      ..strokeWidth=2.0
      ..color=Colors.blueAccent
      ..invertColors=false;

    double sX=0.0;
    double eX=31.0;
    double sY=30.0;
    double eY=60.0;
    canvas.drawLine(Offset(sX, sY), Offset(eX, eY), paint);

  }

  //在实际场景中正确利用此回调可以避免重绘开销，本示例我们简单的返回true
  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}
class MyPainter1 extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    //画背景
    var paint = Paint()
      ..isAntiAlias = true
      ..strokeWidth=2.0
      ..color=Colors.blueAccent
      ..invertColors=false;

    double sX=0.0;
    double eX=32.0;
    double sY=50.0;
    double eY=30.0;
    canvas.drawLine(Offset(sX, sY), Offset(eX, eY), paint);

  }

  //在实际场景中正确利用此回调可以避免重绘开销，本示例我们简单的返回true
  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}
