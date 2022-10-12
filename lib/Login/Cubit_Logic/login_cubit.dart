import 'package:cubit/cubit.dart';
import 'package:login_cubit/Login/Cubit_Logic/login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(InitialState());

  Auth(String email , String password){
    print('test');
    if((email.isNotEmpty && email.contains('@'))&&(password.isNotEmpty || password.length >= 8)){
      print('test2');
      emit(AuthState());
    }
    else {
      print('test3');
      emit (ErrorState());
    }
    print('test4');
  }
}
