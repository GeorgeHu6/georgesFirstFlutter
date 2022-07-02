// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'drinkingInfo.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DrinkingInfo _$DrinkingInfoFromJson(Map<String, dynamic> json) => DrinkingInfo()
  ..age = json['age'] as num
  ..height = json['height'] as num
  ..weight = json['weight'] as num
  ..drinkWaterToday = json['drinkWaterToday'] as num
  ..calories = json['calories'] as num;

Map<String, dynamic> _$DrinkingInfoToJson(DrinkingInfo instance) =>
    <String, dynamic>{
      'age': instance.age,
      'height': instance.height,
      'weight': instance.weight,
      'drinkWaterToday': instance.drinkWaterToday,
      'calories': instance.calories,
    };
