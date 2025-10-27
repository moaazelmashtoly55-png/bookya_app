

 import 'package:bookya_app/core/helper/dio_services.dart';
import 'package:bookya_app/feature/home/data/models/product_model.dart';
import 'package:bookya_app/feature/home/data/models/slider_model.dart';
import 'package:dio/dio.dart';

class HomeRepo {



 static  getHomeSlider()async{

try{
 final response=await DioServices.dio?.get( "/sliders");
if(response?.statusCode==200){
  return sliderModel.fromJson(response?.data);
}else{
  return "errorrrr";
}


}catch(error){

return error.toString(); 

}
}




static getBestSellarBooks()async{

try{
final response=await DioServices.dio?.get("/products-bestseller");
if(response?.statusCode==200){
  return productModel.fromJson(response?.data);
}

}catch(error){
  return error.toString();
}
}


static addToCart(int productId)async{

try{
  final response=await DioServices.dio?.post("/add-to-cart",
  data: {"product_id":productId}
  );
  if(response?.statusCode== 201){
   return response;
  }else{return "error";}

}catch(error){

return error.toString();
}




}




 }