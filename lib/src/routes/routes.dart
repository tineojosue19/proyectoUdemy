import 'package:flutter/material.dart';

import 'package:udemyyyyy/src/features/presentation/welcome_page/View/welcome_page.dart';
import 'package:udemyyyyy/src/features/presentation/login_page/View/login_page.dart';
import 'package:udemyyyyy/src/features/presentation/forgot_password_page/View/forgot_password.dart';
import 'package:udemyyyyy/src/features/presentation/sing_up_page/View/sing_up_page.dart';
import 'package:udemyyyyy/src/features/presentation/tabs/tabs_page.dart';


final routes = <String,WidgetBuilder> {
  'welcome' : (BuildContext context) => WelcomePage(),
  'login' : (BuildContext context) => LoginPage(),
  'forgot-password' : (BuildContext context) => ForgotPassword(),
  'sing-up' : (BuildContext context) => SingUpPage(),
  'tabs' : (BuildContext context) => TabsPage(),
};