import 'package:bookya_app/core/helper/dio_services.dart';
import 'package:bookya_app/core/helper/local_servises.dart';
import 'package:bookya_app/feature/auth/data/models/register_request_model.dart';
import 'package:flutter/rendering.dart';

class AuthRepo {
  

  static login({required String email, required String password}) async {

    try {
      final Response = await DioServices.dio?.post(
        "/login",
        data: {"email": email, "password": password},
      );

      if (Response?.statusCode == 200) {

      debugPrint(Response?.data["data"]["token"]);

       await LocalServises.prefs?.setString("userToken", Response?.data["data"]["token"]);


        return Response;
      } else {
        return Response?.data["massege"];
      }
    } catch (e) {
      return "please login correctly $e";
    }
  }




 static rigester(RegisterRequestModel registerModel)async{

  try{
       final Response=await DioServices.dio?.post("/register",
        data:registerModel.toMap() );
        
        if(
          Response?.statusCode==201){
            debugPrint(Response?.data["data"]["token"]);
       await LocalServises.prefs?.setString("userToken", Response?.data["data"]["token"]);

            
            
            return Response;
      } else {
        return Response?.data["massege"];
      }
  }catch(e){

 return "please register correctly $e";

  }


  
}








}

