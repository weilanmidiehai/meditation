import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/auth_controller.dart';
import '../widgets/icon_font_icons.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final AuthController authController = Get.find(); // 获取控制器实例
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(IconFontIcons.iconMenu),
        title: const Icon(IconFontIcons.iconLogo,
            size: 50, color: Color(0xFF75af64)),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: InkWell(
              onTap: () {},
              child: Image.network(
                'https://lanhu-oss.lanhuapp.com/FigmaDDSSlicePNG6f8e7faa1e30eb7e06e3496dee37cbf2.png',
                width: 36,
                height: 36,
              ),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
            color: Colors.white,
            width: double.infinity,
            child: Column(
              children: [
                // Text Group
                const Padding(
                  padding: EdgeInsets.only(
                    top: 35,
                  ),
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

                Padding(
                  padding: const EdgeInsets.all(32),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget iconText({
    required String icon,
    required String title,
  }) {
    return Column(
      children: [
        Container(
          width: 62,
          height: 65,
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
