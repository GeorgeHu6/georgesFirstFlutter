import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:team_work/routes/data_page.dart';
import 'common/Global.dart';
import 'common/UserModel.dart';
import 'routes/personal_center.dart';
import 'routes/home_page.dart';
import 'package:team_work/routes/neighbor.dart';

void main() {
  Global.init().then(
    (e) => runApp(
      MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (_) => UserModel()),
        ],
        child: const MyWidget(),
      ),
    ),
  );
}

class MyWidget extends StatelessWidget {
  const MyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const MyApp(),
      routes: {
        // "login": (context) => LoginRoute(),
        // "themes": (context) => ThemeChangeRoute(),
        // "language": (context) => LanguageRoute(),
        "personal_center": (context) => const PersonRoute(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyNeighbor extends StatelessWidget {
  const MyNeighbor({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const MyApp(),
      routes: {
        // "login": (context) => LoginRoute(),
        // "themes": (context) => ThemeChangeRoute(),
        // "language": (context) => LanguageRoute(),
        "neighbor": (context) => const Neighbor(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}

// The main App widget
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _selectedIndex = 0;
  final List _pageList = [const HomePage(), const DataPage(), const Neighbor(), const PersonRoute()];
  var _titleName = 'HomePage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_titleName),
      ),
      body: _pageList[_selectedIndex],
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue,
        elevation: 7.0,
        highlightElevation: 14.0,
        onPressed: () {
          print("啊对对对");
        },
        mini: false,
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        shape: const CircularNotchedRectangle(), // 底部导航栏打一个圆形的洞
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            buildBotomItem(_selectedIndex, 0, Icons.home, "首页"),
            buildBotomItem(_selectedIndex, 1, Icons.library_music, "发现"),
            buildBotomItem(_selectedIndex, -1, null, "发现"),
            buildBotomItem(_selectedIndex, 2, Icons.email, "消息"),
            buildBotomItem(_selectedIndex, 3, Icons.person, "我的"),
          ],
        ),
      ),
    );
  }

  buildBotomItem(int selectIndex, int index, IconData? iconData, String title) {
    //未选中状态的样式
    TextStyle textStyle = const TextStyle(fontSize: 12.0, color: Colors.grey);
    MaterialColor iconColor = Colors.grey;
    double iconSize = 20;
    EdgeInsetsGeometry padding = const EdgeInsets.only(top: 8.0);

    if (selectIndex == index) {
      //选中状态的文字样式
      textStyle = const TextStyle(fontSize: 13.0, color: Colors.blue);
      //选中状态的按钮样式
      iconColor = Colors.blue;
      iconSize = 25;
      padding = const EdgeInsets.only(top: 6.0);
    }
    Widget padItem = const SizedBox(
      width: 10,
    );
    if (iconData != null) {
      padItem = Padding(
        padding: padding,
        child: Container(
          color: Colors.white,
          child: Center(
            child: Column(
              children: <Widget>[
                Icon(
                  iconData,
                  color: iconColor,
                  size: iconSize,
                ),
                Text(
                  title,
                  style: textStyle,
                )
              ],
            ),
          ),
        ),
      );
    }
    Widget item = Expanded(
      flex: 1,
      child: GestureDetector(
        onTap: () {
          if (index != _selectedIndex) {
            setState(
              () {
                _selectedIndex = index;
                _onItemTapped(index);
              },
            );
          }
        },
        child: SizedBox(
          height: 52,
          child: padItem,
        ),
      ),
    );
    return item;
  }

 void _onItemTapped(int index) async {
    setState(
      () {
        _selectedIndex = index;
        switch (index) {
          case 0:
            _titleName = 'HomePage';
            break;
          case 1:
            _titleName = 'DataPage';
            break;
          case 2:
            _titleName = 'Neightbor';
            break;
          case 3:
            _titleName = 'Personal Center';
            break;
        }
      },
    );
  }
}
//test contributor