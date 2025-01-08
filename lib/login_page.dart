import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'controllers/auth_controller.dart';
import 'navigation_page.dart';
import 'widgets/icon_font_icons.dart';

// class LoginPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     final AuthController authController = Get.find();
//
//     return Scaffold(
//       appBar: AppBar(title: Text("Login Page")),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text("Please log in to continue."),
//             ElevatedButton(
//               onPressed: () {
//                 authController.login();  // 更新登录状态
//                 Get.off(HomePage());  // 登录成功后跳转到首页，并移除当前登录页面
//               },
//               child: Text("Login"),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final AuthController authController = Get.find();
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
              onPressed: () {
                // 切换语言
                if (Get.locale == const Locale('en', 'US')) {
                  Get.updateLocale(const Locale('zh', 'CN'));
                } else {
                  Get.updateLocale(const Locale('en', 'US'));
                }
              },
              icon: Icon(
                  Get.locale == const Locale('en', 'US')
                      ? IconFont.iconEN
                      : IconFont.iconZH,
                  size: 30,
                  color: Theme.of(context).colorScheme.primary))
        ],
      ),
      body: Stack(
        children: [
          // 背景图
          Positioned(
              bottom: 0,
              right: 0,
              child: Image.asset('assets/images/login_bg.png',
                  fit: BoxFit.cover, width: MediaQuery.sizeOf(context).width)),
          Container(
            padding: const EdgeInsets.all(30),
            child: ListView(
              children: [
                // LOGO
                Container(
                  alignment: Alignment.centerLeft,
                  child: Icon(IconFont.iconLogo,
                      size: 60,
                      color: Theme.of(context).colorScheme.primaryContainer),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: Text(
                    "loginNow".tr,
                    style: const TextStyle(fontSize: 24),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 19),
                  child: Text(
                    'loginTitle1'.tr,
                    // '立即登录，以访问您的历史练习和保存收藏的音乐。',
                    style: TextStyle(
                      fontSize: 18,
                      color: Theme.of(context).colorScheme.outline,
                      fontFamily: 'STSong-Regular',
                    ),
                  ),
                ),
                const SizedBox(height: 60),
                const Text(
                  '输入Email',
                  style: TextStyle(
                    fontSize: 16,
                    color: Color(0xFF868D8D),
                    fontFamily: 'STSong-Regular',
                  ),
                ),
                Container(
                  decoration: const BoxDecoration(
                    border: Border(
                      top: BorderSide(color: Color(0xFF868D8D), width: 1),
                    ),
                  ),
                ),
                const SizedBox(height: 40),
                const Text(
                  '输入密码',
                  style: TextStyle(
                    fontSize: 16,
                    color: Color(0xFF868D8D),
                    fontFamily: 'STSong-Regular',
                  ),
                ),
                Container(
                  decoration: const BoxDecoration(
                    border: Border(
                      top: BorderSide(color: Color(0xFF868D8D), width: 1),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'forgetPassword'.tr,
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.outline,
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 30),
                // 登录按钮
                ElevatedButton(
                    onPressed: () {
                      authController.login(); // 更新登录状态
                      Get.off(const SplashScreen()); // 登录成功后跳转到首页，并移除当前登录页面
                    },
                    child: Text('loginNow'.tr)),
                const SizedBox(height: 10),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'loginNOAccount'.tr,
                      style: const TextStyle(
                        fontSize: 16,
                        fontFamily: 'STSong-Regular',
                      ),
                    ),
                    Text(
                      'goRegister'.tr,
                      style: TextStyle(
                        fontSize: 16,
                        color: Theme.of(context).colorScheme.primary,
                        fontFamily: 'STSong-Regular',
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
