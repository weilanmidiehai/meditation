import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../widgets/icon_font_icons.dart';
import 'home_controller.dart';
import 'home_drawer.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  final controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
        init: controller,
        global: true,
        builder: ((controller) {
          return Scaffold(
            appBar: AppBar(
              // leading: const Icon(IconFont.iconMenu),
              title: const Icon(IconFont.iconLogo,
                  size: 50, color: Color(0xFF75af64)),
              // title: Text('home'.tr),
              actions: [
                InkWell(
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Icon(
                      controller.multiple.value
                          ? Icons.dashboard
                          : Icons.view_agenda,
                    ),
                  ),
                  onTap: () {
                    controller.setMultiple();
                  },
                ),
              ],
            ),
            drawer: HomeDrawer(logic: controller),
            body: Column(
              children: [
                InkWell(
                    onTap: () {
                      // Get.to(const WebViewExample());
                    },
                    child:
                        HomeController.widgetOptions[controller.selectedIndex]),
                const Padding(
                  padding: EdgeInsets.only(top: 35, bottom: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '欢迎回来，新月',
                        style: TextStyle(
                          fontSize: 24,
                          color: Color(0xFF040505),
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                      SizedBox(height: 15),
                      Text(
                        '你今天感觉怎么样？',
                        style: TextStyle(
                          fontSize: 18,
                          color: Color(0xFF424848),
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                    child: GridView(
                        // padding: const EdgeInsets.symmetric(horizontal: 5),
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: controller.multiple.value ? 4 : 3,
                            //横轴三个子widget
                            childAspectRatio: 1, //宽高比为1时，子widget
                            mainAxisSpacing: 0, //主轴空隙间距
                            crossAxisSpacing: 0 //次轴空隙间距
                            ),
                        children: [
                      iconText(
                          icon:
                              'https://lanhu-oss.lanhuapp.com/FigmaDDSSlicePNG72f099b2988760cd7296dac0021fdba6.png',
                          title: '平静'),
                      iconText(
                          icon:
                              'https://lanhu-oss.lanhuapp.com/FigmaDDSSlicePNG6c47d3e6b6f1d7e16631df40ca51b668.png',
                          title: '放松'),
                      iconText(
                          icon:
                              'https://lanhu-oss.lanhuapp.com/FigmaDDSSlicePNGef9b28a0a5af85c1a0f57f3a3a6ed20f.png',
                          title: '专注'),
                      iconText(
                          icon:
                              'https://lanhu-oss.lanhuapp.com/FigmaDDSSlicePNG7cf5bc548c927e55523d84cf1ef1cfc8.png',
                          title: '焦虑')
                    ])),
              ],
            ),
          );
        }));
  }

  Widget iconText({
    required String icon,
    required String title,
  }) {
    return Column(
      children: [
        Container(
          width: 60,
          height: 60,
          decoration: BoxDecoration(
              color: const Color(0xADADC46E),
              borderRadius: BorderRadius.circular(20)),
          child: Center(
            child: Image.network(icon, width: 35, height: 35),
          ),
        ),
        const SizedBox(height: 5),
        Text(title,
            style: const TextStyle(fontSize: 12, color: Color(0xFF818585))),
      ],
    );
  }
}
