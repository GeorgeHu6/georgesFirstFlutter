import 'package:dio/dio.dart';

 Future<String> gitGet() async {
  Dio dio =  Dio();
  Response response;
  response=await dio.get("https://raw.githubusercontent.com/GeorgeHu6/georgesFirstFlutter/main/data.json");
  // print(response.data.toString());
  return response.data.toString();
}