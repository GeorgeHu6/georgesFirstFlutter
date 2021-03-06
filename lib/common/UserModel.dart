
import 'package:flutter/material.dart';
import 'package:team_work/models/drinkingInfo.dart';

import '../models/userInfo.dart';
import 'Global.dart';
import '../models/profile.dart';

class ProfileChangeNotifier extends ChangeNotifier {
  Profile get _profile => Global.profile;

  @override
  void notifyListeners() {
    Global.saveProfile(); //保存Profile变更
    super.notifyListeners(); //通知依赖的Widget更新
  }
}

class UserModel extends ProfileChangeNotifier {
  UserInfo? get user => _profile.user;
  DrinkingInfo? get drinkingInfo => _profile.drinkingInfo;

  // APP是否登录(如果有用户信息，则证明登录过)
  bool get isLogin => user != null;


  //用户信息发生变化，更新用户信息并通知依赖它的子孙Widgets更新
  set user(UserInfo? user) {
    if (user?.login != _profile.user?.login) {
      _profile.lastLogin = _profile.user?.login!;
      _profile.user = user;
      notifyListeners();
    }
  }
}