import 'package:json_annotation/json_annotation.dart';

part 'userInfo.g.dart';

@JsonSerializable()
class UserInfo {
  UserInfo();

  String? login;
    String? avatar_url;
    String? location;
    String? email;
    String? bio;
    String? created_at;
    String? updated_at;
    
  factory UserInfo.fromJson(Map<String,dynamic> json) => _$UserInfoFromJson(json);
  Map<String, dynamic> toJson() => _$UserInfoToJson(this);
}