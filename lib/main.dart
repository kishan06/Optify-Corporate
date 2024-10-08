import 'package:Optifii_Corporate/routes/route_name.dart';
import 'package:Optifii_Corporate/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]).then((value) => runApp(const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      //useInheritedMediaQuery: true,
      builder: (BuildContext context, Widget? child) => GetMaterialApp(
        title: 'Optifii',
        theme: ThemeData(
          primarySwatch: Colors.grey,
        ),
        debugShowCheckedModeBanner: false,
        initialRoute: RouteName.splashScreen,
        getPages: AppRoutes.appRoutes(),
      ),
      minTextAdapt: true,
      designSize: const Size(390, 844),
    );
  }
}
