import 'package:json_annotation/json_annotation.dart';
import "userInfo.dart";
import "drinkingInfo.dart";
part 'profile.g.dart';

@JsonSerializable()
class Profile {
  Profile();

  UserInfo? user;
    String? token;
    String? lastLogin;
    DrinkingInfo? drinkingInfo;
    
  factory Profile.fromJson(Map<String,dynamic> json) => _$ProfileFromJson(json);
  Map<String, dynamic> toJson() => _$ProfileToJson(this);
}