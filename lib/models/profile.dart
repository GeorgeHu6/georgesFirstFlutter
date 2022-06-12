import 'package:json_annotation/json_annotation.dart';
import "user.dart";
import "drinking_info.dart";
part 'profile.g.dart';

@JsonSerializable()
class Profile {
  Profile();

  User? user;
  String? token;
  String? lastLogin;
  Drinking_info? drinking_info;

  factory Profile.fromJson(Map<String, dynamic> json) =>
      _$ProfileFromJson(json);
  Map<String, dynamic> toJson() => _$ProfileToJson(this);
}
