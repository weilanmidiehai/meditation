import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'navigation_page.dart';
import 'pages/login/login_controller.dart';
import 'pages/login/login_page.dart';
import 'translations/app_translations.dart';
import 'util/app_theme.dart';

void main() {
  // 初始化控制器
  Get.put(LoginController());

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(375, 812), // 设计稿的尺寸，通常是iPhone X的尺寸
        minTextAdapt: true, // 自动调整文本大小，保证字体适配
        builder: (context, child) {
          return GetMaterialApp(
            title: 'Flutter GetX Demo',
            debugShowCheckedModeBanner: false,
            theme: greenTheme,
            darkTheme: darkGreenTheme,
            themeMode: ThemeMode.system,
            translations: AppTranslations(),
            locale: const Locale('en', 'US'),
            // 默认语言
            fallbackLocale: const Locale('en', 'US'),
            // 备用语言
            // 默认跳转到 LoginPage
            // home: LoginPage(),
            // 或者使用 initialRoute
            initialRoute: '/login',
            getPages: [
              GetPage(name: '/login', page: () =>   LoginPage()),
              GetPage(name: '/splash', page: () => const SplashScreen())
            ],
          );
        });
  }
}
