import 'package:bloc/bloc.dart';
import 'package:bookya_app/feature/auth/data/models/register_request_model.dart';
import 'package:bookya_app/feature/auth/data/repo/auth_repo.dart';
import 'package:meta/meta.dart';

part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthInitial());

  login({required String email, required String password}) async {
    emit(LoginLoadingState());
    final Response = await AuthRepo.login(email: email, password: password);
    if (Response is String) {
      emit(LoginErrorState());
    } else {
      emit(LoginSuccessState());
    }
  }

  register(RegisterRequestModel registerModel) async {
    emit(RegisterLoadingState());
    final Response = await AuthRepo.rigester(registerModel);
     if (Response is String) {
      emit(RegisterErrorState());
    } else {
      emit(RegisterSuccessState());
    }
  }
}
