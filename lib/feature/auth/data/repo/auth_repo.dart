import 'package:dio/dio.dart';

class AuthRepo {
  static Dio dio = Dio(
    BaseOptions(
      baseUrl: "https://codingarabic.online/api",
      headers: {
        "Accept": "application/json",
        "Content-Type": "application/json",
      },
    ),
  );

  static login({required String email, required String password}) async {
    try {
      final Response = await dio.post(
        "/login",
        data: {"email": email, "password": password},
      );

      if (Response.statusCode == 200) {
        return Response;
      } else {
        return Response.data["massege"];
      }
    } catch (e) {
      return "errorrr $e";
    }
  }
}
