// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'User.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

User _$UserFromJson(Map<String, dynamic> json) => User()
  ..login = json['login'] as String?
  ..avatar_url = json['avatar_url'] as String?
  ..location = json['location'] as String?
  ..email = json['email'] as String?
  ..bio = json['bio'] as String?
  ..created_at = json['created_at'] as String?
  ..updated_at = json['updated_at'] as String?;

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'login': instance.login,
      'avatar_url': instance.avatar_url,
      'location': instance.location,
      'email': instance.email,
      'bio': instance.bio,
      'created_at': instance.created_at,
      'updated_at': instance.updated_at,
    };
