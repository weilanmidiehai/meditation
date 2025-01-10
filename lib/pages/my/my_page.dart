import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyPage extends StatefulWidget {
  const MyPage({super.key});

  @override
  State<MyPage> createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('My Page')),
      body: Container(
          padding: EdgeInsets.all(20.w),
          child: Center(
            child: ListView(

              children: [
              Center(
                child: ClipOval(
                  child: Image.network(
                    'https://img1.baidu.com/it/u=3954207464,4167950833&fm=253&fmt=auto&app=120&f=JPEG?w=502&h=500',
                    width: 100,
                    height: 100,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Text('用户名'),
              Text('ip地址'),

            ],),
          )),
    );
  }
}
