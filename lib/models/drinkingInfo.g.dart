// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'drinkingInfo.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DrinkingInfo _$DrinkingInfoFromJson(Map<String, dynamic> json) => DrinkingInfo()
  ..age = json['age'] as int?
  ..height = json['height'] as double?
  ..weight = json['weight'] as double?
  ..drinkWaterToday = json['drinkWaterToday'] as double?
  ..calories = json['calories'] as int?;

Map<String, dynamic> _$DrinkingInfoToJson(DrinkingInfo instance) =>
    <String, dynamic>{
      'age': instance.age,
      'height': instance.height,
      'weight': instance.weight,
      'drinkWaterToday': instance.drinkWaterToday,
      'calories': instance.calories,
    };
