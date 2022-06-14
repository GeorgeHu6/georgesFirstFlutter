import 'package:json_annotation/json_annotation.dart';

part 'drinkingInfo.g.dart';

@JsonSerializable()
class DrinkingInfo {
  DrinkingInfo();

  
  factory DrinkingInfo.fromJson(Map<String,dynamic> json) => _$DrinkingInfoFromJson(json);
  Map<String, dynamic> toJson() => _$DrinkingInfoToJson(this);
}