import 'package:e_commerce/core/constants/app_strings.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthInitial());

  Future<void> saveUserName(String name) async {
    emit(AuthLoading());

    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(AppStrings.userNameKey, name);

    emit(AuthAuthenticated(name));
  }

  Future<void> checkUser() async {
    final prefs = await SharedPreferences.getInstance();
    final name = prefs.getString(AppStrings.userNameKey);

    if (name != null && name.isNotEmpty) {
      emit(AuthAuthenticated(name));
    }
  }
}
