import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
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
        child: MyWidget(),
      ),
    ),
  );
}

class MyWidget extends StatelessWidget {
  const MyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyApp(),
      routes: {
        // "login": (context) => LoginRoute(),
        // "themes": (context) => ThemeChangeRoute(),
        // "language": (context) => LanguageRoute(),
        "personal_center": (context) => PersonRoute(),
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
      home: MyApp(),
      routes: {
        // "login": (context) => LoginRoute(),
        // "themes": (context) => ThemeChangeRoute(),
        // "language": (context) => LanguageRoute(),
        "neighbor": (context) => Neighbor(),
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
  final List _pageList = [HomePage(), PersonRoute(),Neighbor()];
  var _titleName = 'HomePage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_titleName),
      ),
      body: _pageList[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        // 底部导航
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: '首页'),
          BottomNavigationBarItem(icon: Icon(Icons.announcement), label: '信息'),
          BottomNavigationBarItem(icon: Icon(Icons.link), label: '连接'),
        ],
        currentIndex: _selectedIndex,
        fixedColor: Color.fromARGB(250, 32, 94, 151),
        onTap: _onItemTapped,
      ),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      switch (index) {
        case 0:
          _titleName = 'HomePage';
          break;
        case 1:
          _titleName = 'Personal Center';
          break;
        case 2:
          _titleName = 'Neightbor';
          break;
      }

      // Navigator.popAndPushNamed(context, 'personal_center');
    });
  }
}
//test contributor