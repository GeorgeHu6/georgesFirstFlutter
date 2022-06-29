import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Neighbor extends StatelessWidget {
  const Neighbor({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //标题行
    Widget titleSection = Container(
      padding: const EdgeInsets.all(32.0),
      child: Row(
        children: [
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(
              Icons.account_circle,
              size: 50,
              color: Color.fromARGB(250, 34, 92, 151),
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: const Text(
                    '欢迎回到健康饮水',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Color.fromARGB(250, 34, 92, 151),
                    ),
                  ),
                ),
                const Text(
                  '了解饮水小知识，饮水更健康',
                  style: TextStyle(
                    color: Color.fromARGB(200, 179, 217, 228),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );

//喝水常识介绍模块
    var card = SizedBox(
      height: 250.0,
      child: Card(
        //与对应组件的间距
        margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
        //圆角裁剪
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(18),
          side: BorderSide(
            color: Color.fromARGB(250, 34, 92, 151),
            width: 3,
          ),
        ),
        color: Color.fromARGB(199, 176, 217, 228),
        child: Column(
          children: const [
            ListTile(
              title: Text('常见的饮水误区',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: Color.fromARGB(250, 34, 92, 151),
                  )),
              subtitle: Text('每天需喝8杯水！'),
              leading: Icon(
                Icons.hearing_rounded,
                color: Color.fromARGB(250, 34, 92, 151),
              ),
              trailing: Icon(
                Icons.chevron_right,
              ),
            ),
            Divider(
              indent: 1,
            ),
            ListTile(
              title: Text('孩子每天应喝多少水',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: Color.fromARGB(250, 34, 92, 151),
                  )),
              subtitle: Text('健康的饮水量是多少'),
              leading: Icon(
                Icons.star,
                color: Color.fromARGB(250, 34, 92, 151),
              ),
              trailing: Icon(
                Icons.chevron_right,
              ),
            ),
            Divider(
              indent: 1,
            ),
            ListTile(
              title: Text(
                '如何养成健康的饮水习惯',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: Color.fromARGB(250, 34, 92, 151),
                ),
              ),
              leading: Icon(
                Icons.hail,
                color: Color.fromARGB(250, 32, 94, 151),
              ),
              trailing: Icon(
                Icons.chevron_right,
              ),
            ),
          ],
        ),
      ),
    );

    //饮水健康专家解读文本框
    Widget textSection = Container(
      width: 200,
      height: 75,
      padding: const EdgeInsets.all(20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: const Text(
                    '喝水知识专家解读',
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 18,
                      color: Colors.blueGrey,
                    ),
                  ),
                ),
              ],
            ),
          ),
          ElevatedButton(
            style: ButtonStyle(
              backgroundColor:
                  MaterialStateProperty.all(Color.fromARGB(250, 34, 92, 151)),
            ),
            onPressed: () {
              Navigator.of(context).push(_createRoute());
            },
            child: const Text('更多'),
          ),
        ],
      ),
    );

    //解读
    const descTextStyle = TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.w800,
      fontFamily: 'Roboto',
      letterSpacing: 0.5,
      fontSize: 18,
      height: 2,
    );

    var explain = DefaultTextStyle.merge(
      style: descTextStyle,
      child: Container(
        height: 200.0,
        padding: const EdgeInsets.all(20),
        child: ListView(
          /* mainAxisAlignment: MainAxisAlignment.spaceEvenly,*/
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            Column(
              children: [
                Container(
                  height: 100.0,
                  width: 150.0,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(199, 176, 217, 228),
                    borderRadius: BorderRadius.all(Radius.circular(10.0))
                  ),
                  child: Image.asset('assets/news.png'),
                ),
                Text(
                  '第一杯水的重要性',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 15,
                    color: Colors.blueGrey,
                  ),
                ),
                Icon(
                  Icons.more_horiz,
                  color: Color.fromARGB(250, 32, 94, 151),
                )
              ],
            ),
            Divider(
              indent: 4,
              endIndent: 4,
            ),
            Column(
              children: [
                Container(
                  height: 100.0,
                  width: 150.0,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(199, 176, 217, 228),
                    borderRadius: BorderRadius.all(Radius.circular(10.0))
                  ),
                  child: Image.asset('assets/news_1.png'),
                ),
                Text(
                  '健康的饮水习惯',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 15,
                    color: Colors.blueGrey,
                  ),
                ),
                Icon(
                  Icons.more_horiz,
                  color: Color.fromARGB(250, 32, 94, 151),
                )
              ],
            ),
            Divider(
              indent: 4,
              endIndent: 4,
            ),
            Column(
              children: [
                Container(
                  height: 100.0,
                  width: 150.0,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(199, 176, 217, 228),
                    borderRadius: BorderRadius.all(Radius.circular(10.0))
                  ),
                  child: Image.asset('assets/news_2.png'),
                ),
                Text(
                  '每天该喝多少水？',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 15,
                    color: Colors.blueGrey,
                  ),
                ),
                Icon(
                  Icons.more_horiz,
                  color: Color.fromARGB(250, 32, 94, 151),
                )
              ],
            ),
            Divider(
              indent: 4,
              endIndent: 4,
            ),
            Column(
              children: [
                Container(
                  height: 100.0,
                  width: 150.0,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(199, 176, 217, 228),
                    borderRadius: BorderRadius.all(Radius.circular(10.0))
                  ),
                  child: Image.asset('assets/news_3.png'),
                ),
                Text(
                  '喝水减肥？',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 15,
                    color: Colors.blueGrey,
                  ),
                ),
                Icon(
                  Icons.more_horiz,
                  color: Color.fromARGB(250, 32, 94, 151),
                )
              ],
            ),
          ],
        ),
      ),
    );


    //健康饮水小妙招文本框
    Widget textSection_1 = Container(
      width: 200,
      height: 75,
      padding: const EdgeInsets.all(20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: const Text(
                    '健康饮水小妙招',
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 18,
                      color: Colors.blueGrey,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );

    var newsgroup = DefaultTextStyle.merge(
      style: descTextStyle,
      child: Container(
        height: 200.0,
        padding: const EdgeInsets.all(20),
        child: ListView(
          /* mainAxisAlignment: MainAxisAlignment.spaceEvenly,*/
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            Column(
              children: [
                Container(
                  height: 100.0,
                  width: 150.0,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(199, 176, 217, 228),
                    borderRadius: BorderRadius.all(Radius.circular(10.0))
                  ),
                  child: Image.asset('assets/news.png'),
                ),
              ],
            ),
            Divider(
              indent: 4,
              endIndent: 4,
            ),
            Column(
              children: [
                Container(
                  height: 100.0,
                  width: 150.0,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(199, 176, 217, 228),
                    borderRadius: BorderRadius.all(Radius.circular(10.0))
                  ),
                  child: Image.asset('assets/news_1.png'),
                ),
                
              ],
            ),
            Divider(
              indent: 4,
              endIndent: 4,
            ),
            Column(
              children: [
                Container(
                  height: 100.0,
                  width: 150.0,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(199, 176, 217, 228),
                    borderRadius: BorderRadius.all(Radius.circular(10.0))
                  ),
                  child: Image.asset('assets/news_2.png'),
                ),
                
              ],
            ),
            Divider(
              indent: 4,
              endIndent: 4,
            ),
            Column(
              children: [
                Container(
                  height: 100.0,
                  width: 150.0,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(199, 176, 217, 228),
                    borderRadius: BorderRadius.all(Radius.circular(10.0))
                  ),
                  child: Image.asset('assets/news_3.png'),
                ),
                
              ],
            ),
          ],
        ),
      ),
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          '社区',
          style: TextStyle(
            fontWeight: FontWeight.w500,
            color: Color.fromARGB(250, 34, 92, 151),
          ),
        ),
        backgroundColor: Colors.white,
        actions: <Widget>[
          //导航栏右侧菜单
          IconButton(
              icon: Icon(Icons.notifications_none),
              color: Color.fromARGB(250, 34, 92, 151),
              onPressed: () {}),
        ],
      ),
      body: ListView(
        children: [
          titleSection, //标题
          card, //常识介绍卡片
          textSection,//专家解读
          explain,
          textSection_1,//健康饮水小tips
          newsgroup,
        ],
      ),
    );
  }
}

Route _createRoute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => const Exper_News(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const begin = Offset(0.0, 1.0);
      const end = Offset.zero;
      const curve = Curves.ease;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}

class Exper_News extends StatelessWidget {
  const Exper_News({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('专家解读'),
      ),
      body: const Center(
        child: Text('Page 2'),
      ),
    );
  }
}
