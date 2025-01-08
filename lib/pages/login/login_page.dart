import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../navigation_page.dart';
import '../../widgets/icon_font_icons.dart';
import 'login_controller.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final controller = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<LoginController>(
        init: controller,
        global: true,
        builder: (controller) {
          return Scaffold(
            appBar: AppBar(
              automaticallyImplyLeading: false,
              actions: [
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: IconButton(
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
                          color: Theme.of(context).colorScheme.primary)),
                )
              ],
            ),
            body: Stack(
              children: [
                // 背景图
                Positioned(
                    bottom: 0,
                    right: 0,
                    child: Image.asset('assets/images/login_bg.png',
                        fit: BoxFit.cover,
                        width: MediaQuery.sizeOf(context).width)),
                Container(
                  padding: EdgeInsets.all(30.h),
                  child: ListView(
                    children: [
                      // LOGO
                      Container(
                        alignment: Alignment.centerLeft,
                        child: Icon(IconFont.iconLogo,
                            size: 60.sp,
                            color:
                                Theme.of(context).colorScheme.primaryContainer),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 30),
                        child: Text(
                          "loginNow".tr,
                          style: TextStyle(fontSize: 24.sp),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 19.h),
                        child: Text(
                          'loginTitle1'.tr,
                          // '立即登录，以访问您的历史练习和保存收藏的音乐。',
                          style: TextStyle(
                            fontSize: 16.sp,
                            color: Theme.of(context).colorScheme.outline,
                          ),
                        ),
                      ),
                      SizedBox(height: 20.h),
                      TextFormField(
                          // autofocus: nameAutoFocus,
                          controller: controller.unameController,
                          decoration:   InputDecoration(
                            hintText: 'username'.tr,
                          ),
                          // 校验用户名（不能为空）
                          validator: (v) {
                            return v == null || v.trim().isNotEmpty
                                ? null
                                : 'userNameRequired';
                          }),
                      SizedBox(height: 20.h),
                      TextFormField(
                        controller: controller.pwdController,
                        decoration: InputDecoration(
                            hintText: 'pwd'.tr,
                            suffixIcon: IconButton(
                              icon: Icon(controller.pwdShow
                                  ? Icons.visibility_off
                                  : Icons.visibility),
                              onPressed: () {
                                controller.pwdShowToggle;
                              },
                            )),
                        obscureText: !controller.pwdShow,
                        //校验密码（不能为空）
                        validator: (v) {
                          return v == null || v.trim().isNotEmpty
                              ? null
                              : 'passwordRequired';
                        },
                      ),

                      Container(
                        alignment: Alignment.centerRight,
                        padding: EdgeInsets.only(top: 6.h),
                        child: Text(
                          'forgetPassword'.tr,
                          textAlign: TextAlign.right,
                          style: TextStyle(
                            color: Theme.of(context).colorScheme.outline,
                          ),
                        ),
                      ),

                      SizedBox(height: 30.h),
                      // 登录按钮
                      ElevatedButton(
                          onPressed: () {
                            controller.login(); // 更新登录状态
                            Get.off(
                                const SplashScreen()); // 登录成功后跳转到首页，并移除当前登录页面
                          },
                          child: Text('loginNow'.tr)),
                      SizedBox(height: 10.h),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('loginNOAccount'.tr),
                          Text(
                            'goRegister'.tr,
                            style: TextStyle(
                              color: Theme.of(context).colorScheme.primary,
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
        });
  }
}
