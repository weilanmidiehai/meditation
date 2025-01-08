import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'navigation_page.dart';
import 'login_page.dart';
import 'controllers/auth_controller.dart';
import 'translations/app_translations.dart';
import 'util/app_theme.dart';

void main() {
  // 初始化控制器
  Get.put(AuthController());

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter GetX Demo',
      debugShowCheckedModeBanner: false,
      theme: greenTheme,
      darkTheme: darkGreenTheme,
      themeMode: ThemeMode.system,
      translations: AppTranslations(),
      locale: const Locale('en', 'US'), // 默认语言
      fallbackLocale: const Locale('en', 'US'), // 备用语言
      // 默认跳转到 LoginPage
      // home: LoginPage(),
      // 或者使用 initialRoute
      initialRoute: '/login',
      getPages: [
        GetPage(name: '/login', page: () => const LoginPage()),
        GetPage(name: '/splash', page: () => const SplashScreen())
      ],
    );
  }
}
