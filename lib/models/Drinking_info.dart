import 'package:json_annotation/json_annotation.dart';

part 'Drinking_info.g.dart';

@JsonSerializable()
class Drinking_info {
  Drinking_info();

  
  factory Drinking_info.fromJson(Map<String,dynamic> json) => _$Drinking_infoFromJson(json);
  Map<String, dynamic> toJson() => _$Drinking_infoToJson(this);
}