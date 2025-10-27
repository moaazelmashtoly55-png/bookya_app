import 'package:bloc/bloc.dart';
import 'package:bookya_app/feature/home/data/models/product_model.dart';
import 'package:bookya_app/feature/home/data/models/slider_model.dart';
import 'package:bookya_app/feature/home/data/repo/home_repo.dart';
import 'package:dio/dio.dart';
import 'package:meta/meta.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial());


getHomeSlider()async{
  emit(GetHomeSliderLoading());
  final response=await HomeRepo.getHomeSlider();

if(response is String){
  emit(GetHomeSliderError());

}else if (response is sliderModel){
  emit(GetHomeSliderSuccess(response.data?.sliders??[]));
}
}

getBestSellar()async{

emit(GetBestSellarLoading());
final response=await HomeRepo.getBestSellarBooks();
if(response is String){
  emit(GetBestSellarError());
}else if(response is productModel){
  emit(GetBestSellarSuccess(response.data?.products??[]));
}
}

addToCart(int productId)async{

emit(AddToCartLoading());
final response=await HomeRepo.addToCart(productId) ;
if(response is String){
  emit(AddToCartError());
}else {emit(AddToCartSuccess());};

}


}
