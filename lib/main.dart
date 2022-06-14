import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'common/Global.dart';
import 'common/UserModel.dart';
import 'routes/home_page.dart';

void main() {
  Global.init().then((e) => runApp(MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => UserModel()),
      ],
      child: MaterialApp(
        onGenerateTitle: (context) {
          return Provider.of<UserModel>(context).isLogin
              ? Provider.of<UserModel>(context).user!.login!
              : 'Flutter Demo';
        },
        home: HomeRoute(),
        // 注册路由表
        routes: {
          // "login": (context) => LoginRoute(),
          // "themes": (context) => ThemeChangeRoute(),
          // "language": (context) => LanguageRoute(),
        },
      ),
    );
  }
}
