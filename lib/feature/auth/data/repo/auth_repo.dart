import 'package:dio/dio.dart';

class AuthRepo {
  Dio dio = Dio(BaseOptions(

    baseUrl: "https://codingarabic.online/api",
    headers:{
      "Accept":"application/json",
      "Content-Type":"application/json"
    }
    

  ));
}
