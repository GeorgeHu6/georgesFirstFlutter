import 'package:flutter/material.dart';

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
                      color: Color.fromARGB(250, 34, 92, 151),
                    ),
                  ),
                ),
                const Text(
                  '了解饮水小知识，饮水更健康',
                  style: TextStyle(
                    color: Color.fromARGB(250, 179, 217, 228),
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
      height: 200.0,
      child: Card(
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

    //饮水健康专家解读
    Widget textSection = Container(
      padding: const EdgeInsets.all(32.0),
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
    var explain = Container(
      margin: const EdgeInsets.symmetric(vertical: 20.0),
      height: 200.0,
      child: GridView.count(
        crossAxisCount: 2,
        padding: const EdgeInsets.all(16.0),
        childAspectRatio: 8.0 / 9.0,
        // TODO: Build a grid of cards (102)
        children: [
          Card(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                AspectRatio(
                  aspectRatio: 18.0 / 11.0,
                  child: Image.asset(''),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(16.0, 12.0, 16.0, 8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const <Widget>[
                      Text('Title'),
                      SizedBox(height: 8.0),
                      Text('Secondary Text'),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
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
              icon: Icon(Icons.local_post_office),
              color: Color.fromARGB(250, 34, 92, 151),
              onPressed: () {}),
        ],
      ),
      body: ListView(
        children: [
          titleSection, //标题
          card, //常识介绍卡片
          textSection,
          explain,
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
