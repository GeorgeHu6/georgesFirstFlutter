// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Profile _$ProfileFromJson(Map<String, dynamic> json) => Profile()
  ..user = json['user']
  ..token = json['token'] as String?
  ..lastLogin = json['lastLogin'] as String?
  ..drinking_info = json['drinking_info'];

Map<String, dynamic> _$ProfileToJson(Profile instance) => <String, dynamic>{
      'user': instance.user,
      'token': instance.token,
      'lastLogin': instance.lastLogin,
      'drinking_info': instance.drinking_info,
    };
