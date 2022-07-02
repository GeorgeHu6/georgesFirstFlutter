import 'package:json_annotation/json_annotation.dart';

part 'drinkingInfo.g.dart';

@JsonSerializable()
class DrinkingInfo {
  DrinkingInfo();

  num? age;
  num? height;
  num? weight;
  num? drinkWaterToday;
  num? calories;

  factory DrinkingInfo.fromJson(Map<String, dynamic> json) =>
      _$DrinkingInfoFromJson(json);
  Map<String, dynamic> toJson() => _$DrinkingInfoToJson(this);
}
