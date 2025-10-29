import 'package:bloc/bloc.dart';
import 'package:bookya_app/feature/cart/data/models/cart_model.dart';
import 'package:bookya_app/feature/cart/data/repo/cart_repo.dart';
import 'package:dio/dio.dart';
import 'package:meta/meta.dart';

part 'cart_state.dart';

class CartCubit extends Cubit<CartState> {
  CartCubit() : super(CartInitial());



GetCart()async{

emit(GetCartloading());
final response =await CartRepo.getCart();
if(response is String){
  emit(GetCartError());
}else if(response is cartModel){

  emit(GetCartSuccess(response.data?.cartItems??[])); 
}

}







}
