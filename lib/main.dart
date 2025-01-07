import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'pages/home_page.dart';
import 'pages/login_page.dart'; // 确保路径正确
import 'controllers/auth_controller.dart';

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
      debugShowCheckedModeBanner: false,
      title: 'Flutter GetX Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // 默认跳转到 LoginPage
      // home: LoginPage(),
      // 或者使用 initialRoute
      initialRoute: '/login',
      getPages: [
        GetPage(name: '/login', page: () => const LoginPage()),
        GetPage(name: '/home', page: () => const HomePage())
      ],
    );
  }
}
