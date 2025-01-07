import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/auth_controller.dart';
import 'home_page.dart'; // 确保路径正确

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
      body: Container(
        padding: EdgeInsets.all(30),
        child: ListView(
          children: [
            // 中间的大图片
            // Image.network(
            //   "https://lanhu-oss.lanhuapp.com/FigmaDDSSlicePNG583159727586412757ad39065a3dc8f8.png",
            //   width: 422,
            //   height: 327,
            //   // margin: EdgeInsets.only(bottom: 104),
            // ),
            // 登录区域
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  radius: 25,
                  backgroundImage: NetworkImage(
                      "https://lanhu-oss.lanhuapp.com/FigmaDDSSlicePNGfeaa1b4829c80ec198e113ae8ac32305.png"),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 30),
                  child: Text(
                    '立即登录',
                    style: TextStyle(fontSize: 24),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 19),
                  child: Text(
                    '立即登录，以访问您的历史练习和保存收藏的音乐。',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.black.withOpacity(0.7),
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
                  // width: 305,
                  // height: 60,
                  // margin: const EdgeInsets.only(left: 35, top: 14),
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
                  // width: 305,
                  // height: 60,
                  // margin: const EdgeInsets.only(left: 35, top: 11),
                  decoration: const BoxDecoration(
                    border: Border(
                      top: BorderSide(color: Color(0xFF868D8D), width: 1),
                    ),
                  ),
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      '忘记密码？',
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        color: Color(0xFFAFB2B2),
                      ),
                    ),
                  ],
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '还没有账号？',
                      style: TextStyle(
                        fontSize: 16,
                        color: Color(0xFF666666),
                        fontFamily: 'STSong-Regular',
                      ),
                    ),
                    Text(
                      '去注册',
                      style: TextStyle(
                        fontSize: 16,
                        color: Color(0xFF666666),
                        fontFamily: 'STSong-Regular',
                      ),
                    ),
                  ],
                ),
              ],
            ),
            // 登录按钮

            ElevatedButton(
                onPressed: () {
                  authController.login(); // 更新登录状态
                  Get.off(const HomePage()); // 登录成功后跳转到首页，并移除当前登录页面
                },
                child: const Text('立即登录')),
          ],
        ),
      ),
    );
  }
}
