import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:team_work/common/UserModel.dart';
import 'package:team_work/models/userInfo.dart';

class PersonRoute extends StatefulWidget {
  const PersonRoute({Key? key}) : super(key: key);

  @override
  _PersonRouteState createState() => _PersonRouteState();
}

class _PersonRouteState extends State<PersonRoute> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('个人中心'),
          elevation: 30.0, //设置标题阴影 不需要的话值设置成 0.0
          actions: <Widget>[
            //导航栏右侧菜单
            IconButton(icon: Icon(Icons.settings), onPressed: () {}),
          ],
        ),
      );
  }
}
