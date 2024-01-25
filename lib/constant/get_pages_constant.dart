import 'package:example2/constant/route_constant.dart';
import 'package:example2/ui/binding/example_binding.dart';
import 'package:example2/ui/binding/home_binding.dart';
import 'package:example2/ui/binding/login_binding.dart';
import 'package:example2/ui/view/example_screen.dart';
import 'package:example2/ui/view/home_screen.dart';
import 'package:example2/ui/view/login_screen.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

List<GetPage> getPages = [
  GetPage(
      name: RouteConstant.homeScreen,
      page: () => HomeScreen(),
      middlewares: [
        // Add here
        // AuthGuard(),
      ],
      binding: HomeScreenBinding()),
  GetPage(
      name: RouteConstant.loginScreen,
      page: () => LoginScreen(),
      middlewares: [
        // Add here
        // AuthGuard(),
      ],
      binding: LoginScreenBinding()),
  GetPage(
      name: RouteConstant.exampleScreen,
      page: () => ExampleScreen(),
      middlewares: [
        // Add here
        // AuthGuard(),
      ],
      binding: ExampleScreenBinding()),
];
