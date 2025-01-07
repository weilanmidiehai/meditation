import 'package:flutter/material.dart';

class NewPage extends StatelessWidget {
  const NewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          toolbarHeight: 0,
          // title: const Text(
          //   'New Page',
          //   style: TextStyle(
          //       fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
          // ),
          leading: const SizedBox.shrink(),
          backgroundColor: const Color(0xff5b53ea)),
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                height: 300,
                width: double.infinity,
                color: const Color(0xff5b53ea),
                child: const Text(
                  'New Page',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(24, 62, 24, 24),
                padding: const EdgeInsets.fromLTRB(24, 40, 24, 24),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15)),
                child: Column(
                  children: [
                    const Text('Max Loan Amount(Sh)'),
                    const Text(
                      '200,000',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 48,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Text(
                      'We offer a variety of services tailored to differentregions.',
                      style: TextStyle(
                        fontFamily: 'Roboto-Regular',
                      ),
                    ),
                    // Loan Options
                    Container(
                      padding: const EdgeInsets.symmetric(vertical: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          buildLoanOption(
                            'Loan Fast',
                            'https://lanhu-oss.lanhuapp.com/MasterDDSSlicePNGdc6f704fd36aa2c3065ec4f56cf3ec67.png',
                          ),
                          buildLoanOption(
                            'High Limit',
                            'https://lanhu-oss.lanhuapp.com/MasterDDSSlicePNG9f0c598da57d814afb3897cc253df64d.png',
                          ),
                          buildLoanOption(
                            'Low Interest',
                            'https://lanhu-oss.lanhuapp.com/MasterDDSSlicePNG17935c59fc3bf368b3669e11e79541c2.png',
                          ),
                        ],
                      ),
                    ),
                    // Apply for Loan Button
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                          onPressed: () {},
                          child: const Text('Apply For Loan')),
                    )
                  ],
                ),
              ),
              Positioned(
                top: 30, // 位置从顶部开始
                left: MediaQuery.of(context).size.width / 2 - 34, // 居中
                child: Image.network(
                  'https://lanhu-oss.lanhuapp.com/MasterDDSSlicePNG74d834442ab3ddfb7f6298c91652e5c7.png',
                  width: 64,
                  height: 64,
                ),
              ),
            ],
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(24, 0, 24, 24),
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(15)),
            child: Column(
              children: [
                const Row(
                  children: [
                    Text(
                      'How to get loan?',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                // Steps
                buildStep('1', 'Fill in personal information'),
                buildStep('2', 'Choose recommended loan'),
                buildStep('3', 'Get the loan'),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget buildStep(String number, String description) {
    return Padding(
      padding: const EdgeInsets.only(top: 16, left: 24),
      child: Row(
        children: [
          Container(
            width: 24,
            height: 24,
            color: Colors.orange,
            child: Center(
              child: Text(
                number,
                style: const TextStyle(
                  color: Colors.white,
                  fontFamily: 'Roboto-Medium',
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
          const SizedBox(width: 12),
          Text(
            description,
            style: const TextStyle(
              color: Colors.black,
              fontFamily: 'Roboto-Regular',
            ),
          ),
        ],
      ),
    );
  }

  Widget buildLoanOption(String label, String imageUrl) {
    return Row(
      children: [
        Image.network(
          imageUrl,
          width: 11,
          height: 15,
        ),
        const SizedBox(width: 5),
        Text(
          label,
          style: const TextStyle(fontSize: 14),
        ),
      ],
    );
  }
}
