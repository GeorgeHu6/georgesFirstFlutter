import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:team_work/models/User.dart';
import 'common/Global.dart';
import 'common/UserModel.dart';

void main() {
  Global.init().then((e) => runApp(MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => UserModel(),
        ),
      ],
      child: MaterialApp(
        onGenerateTitle: (context) {
          return Provider.of<UserModel>(context).user.login;
        },
        home: HomeRoute(),
        // 注册路由表
        routes: <String, WidgetBuilder>{
          "login": (context) => LoginRoute(),
          "themes": (context) => ThemeChangeRoute(),
          "language": (context) => LanguageRoute(),
        },
      ),
    );
  }
}
