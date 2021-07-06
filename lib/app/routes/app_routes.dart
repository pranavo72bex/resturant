part of 'app_pages.dart';

abstract class Routes {
  Routes._();

  static const HOME = _Paths.HOME;
  static const reports = _Paths.reports;
  static const AppNavigator = _Paths.AppNavigator;
  static const Intropage = _Paths.Intropage;
  static const RegisterPage = _Paths.RegisterPage;
  static const login = _Paths.login;
}

abstract class _Paths {
  static const AppNavigator = '/appNaviagator';
  static const HOME = '/home';
  static const reports = '/reports';
  static const Intropage = '/intro';
  static const RegisterPage = '/register';
  static const login = '/login';
}
