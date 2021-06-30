part of 'app_pages.dart';

abstract class Routes {
  Routes._();

  static const HOME = _Paths.HOME;
  static const Intropage = _Paths.Intropage;
  static const RegisterPage = _Paths.RegisterPage;
}

abstract class _Paths {
  static const HOME = '/home';
  static const Intropage = '/intro';
  static const RegisterPage = '/register';
}
