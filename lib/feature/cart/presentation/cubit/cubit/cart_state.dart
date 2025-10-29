part of 'cart_cubit.dart';

@immutable
sealed class CartState {}

final class CartInitial extends CartState {}
final class GetCartSuccess extends CartState {
final List<CartItems>cartProducts;
  GetCartSuccess(this.cartProducts);
}
final class GetCartloading extends CartState {}
final class GetCartError extends CartState {}

