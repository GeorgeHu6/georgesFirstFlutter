import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:team_work/common/UserModel.dart';
import 'package:team_work/models/userInfo.dart';


class HomeRoute extends StatefulWidget {
  const HomeRoute({Key? key}) : super(key: key);

  @override
  _HomeRouteState createState() => _HomeRouteState();
}

class _HomeRouteState extends State<HomeRoute> {
  
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(Provider.of<UserModel>(context).isLogin? Provider.of<UserModel>(context).user!.login!: 'Flutter Demo'),
      ),
    );
  }
}