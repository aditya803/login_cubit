abstract class LoginState{}

class InitialState extends LoginState{

  @override
  String get status => 'Loading';
}
class AuthState extends LoginState{
  @override
  String get status => 'Authenticated';
}

class ErrorState extends LoginState{
  @override
  String get status => 'Error';
}