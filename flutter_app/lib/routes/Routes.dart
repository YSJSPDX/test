import 'package:flutter/material.dart';
import '../pages/Form.dart';
import '../pages/Tabs.dart';
import '../pages/Search.dart';
import '../pages/Product.dart';
import '../pages/ProductInfo.dart';
import '../pages/user/Login.dart';
import '../pages/user/RegisterFirst.dart';
import '../pages/user/RegisterSecond.dart';
import '../pages/user/RegisterThird.dart';
import '../pages/AppBarDemo.dart';
import '../pages/TabBarController.dart';
import '../pages/User.dart';
import '../pages/Button.dart';
import '../pages/CheckBox.dart';
import '../pages/Radio.dart';
import '../pages/TextField.dart';
import '../pages/FormDemo.dart';

//配置路由
final routes = {
  '/':(context) => Tabs(),
  '/form': (context) => FormPage(),
  '/product': (context) => ProductPage(),
  '/productinfo': (context, {arguments}) => ProductInfoPage(arguments: arguments),
  '/search': (context, {arguments}) => SearchPage(arguments: arguments),
  '/login': (context) => LoginPage(),
  '/registerfirst': (context) => RegisterFistPage(),
  '/registersecond': (context) => RegisterSecondPage(),
  '/registerthird': (context) => RegisterThirdPage(),
  '/appbardemo': (context) => AppBarDemoPage(),
  '/tabbarcontroller': (context) => TabBarControllerPage(),
  '/user':(context) => UserPage(),
  '/button':(context) => ButtonDemoPage(),
  '/radio':(context) => RadioDemo(),
  '/textfield':(context) => TextFieldDemo(),
  '/checkbox':(context) => CheckBoxDemo(),
  '/formdemo':(context) => FormDemoPage(),
};

var onGenerateRoute = (RouteSettings settings) {
  //统一处理
  final String name = settings.name;
  final Function pageContentBuilder = routes[name];
  if (pageContentBuilder != null) {
    if (settings.arguments != null) {
      final Route route = MaterialPageRoute(
          builder: (context) =>
              pageContentBuilder(context, arguments: settings.arguments));
      return route;
    } else {
      final Route route =
          MaterialPageRoute(builder: (context) => pageContentBuilder(context));
      return route;
    }
  }
};
