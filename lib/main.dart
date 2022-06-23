import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'common/Global.dart';
import 'common/UserModel.dart';
import 'routes/personal_center.dart';
import 'routes/home_page.dart';

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
    );
  }
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _selectedIndex = 0;
  final List _pageList = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Demo'),
      ),
      body: HomePage(),
      bottomNavigationBar: BottomNavigationBar(
        // 底部导航
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: '状态'),
          BottomNavigationBarItem(icon: Icon(Icons.announcement), label: '信息'),
          BottomNavigationBarItem(icon: Icon(Icons.link), label: '连接'),
        ],
        currentIndex: _selectedIndex,
        fixedColor: Colors.blue,
        onTap: _onItemTapped,
      ),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      Navigator.pushNamed(context, 'personal_center');
    });
  }
}
//test contributor