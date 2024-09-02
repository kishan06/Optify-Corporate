import 'package:get/get.dart';
import 'package:optifii_employee/Onboarding/LoginScreen.dart';
import 'package:optifii_employee/Onboarding/OnBoardingScreen.dart';
import 'package:optifii_employee/Onboarding/SplashScreen.dart';
import 'package:optifii_employee/routes/route_name.dart';


class AppRoutes {
  static List<GetPage<dynamic>>? appRoutes() => [
        GetPage(
          name: RouteName.splashScreen,
          page: () => const SplashScreen(),
        ),
         GetPage(
          name: RouteName.onboardingScreen,
          page: () => const Onboarding(),
        ),
        GetPage(
          name: RouteName.loginScreen,
          page: () => const LoginScreen(),
        ),
      ];
}
