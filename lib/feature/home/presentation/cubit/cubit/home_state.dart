part of 'home_cubit.dart';

@immutable
sealed class HomeState {}

final class HomeInitial extends HomeState {}

final class GetHomeSliderLoading extends HomeState {}
final class GetHomeSliderError extends HomeState {}
final class GetHomeSliderSuccess extends HomeState {
    final List<Sliders> sliders;
    GetHomeSliderSuccess(this.sliders);
}

final class GetBestSellarLoading extends HomeState {}
final class GetBestSellarError extends HomeState {}
final class GetBestSellarSuccess extends HomeState {

final List<Products> products;
GetBestSellarSuccess(this.products);


}



final class AddToCartLoading extends HomeState {}
final class AddToCartSuccess extends HomeState {}
final class AddToCartError extends HomeState {}

