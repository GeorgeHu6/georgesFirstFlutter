// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'drinkingInfo.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DrinkingInfo _$DrinkingInfoFromJson(Map<String, dynamic> json) => DrinkingInfo()
  ..age = json['age'] as String?
  ..height = json['height'] as String?
  ..weight = json['weight'] as String?
  ..drinkWaterToday = json['drinkWaterToday'] as String?
  ..calories = json['calories'] as String?
  ..schedule = json['schedule'] as List<dynamic>?;

Map<String, dynamic> _$DrinkingInfoToJson(DrinkingInfo instance) =>
    <String, dynamic>{
      'age': instance.age,
      'height': instance.height,
      'weight': instance.weight,
      'drinkWaterToday': instance.drinkWaterToday,
      'calories': instance.calories,
      'schedule': instance.schedule,
    };
