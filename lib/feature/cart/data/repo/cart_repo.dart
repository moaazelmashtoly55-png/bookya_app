import 'package:bookya_app/core/helper/dio_services.dart';
import 'package:bookya_app/feature/cart/data/models/cart_model.dart';
import 'package:dio/dio.dart';

class CartRepo {


 static getCart()async{
try{
final Response=await DioServices.dio?.get("/cart");
if (Response?.statusCode==200){
  return cartModel.fromJson(Response?.data);
}else{return "error";}

}catch(e){
return "error";
}



}







}