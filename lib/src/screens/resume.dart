import 'package:flutter/material.dart';
import 'package:hng_task2/src/constants/app_color.dart';

import '../widgets/developer.dart';

class AboutDevelopers extends StatefulWidget {
  const AboutDevelopers({Key? key}) : super(key: key);

  @override
  State<AboutDevelopers> createState() => _AboutDevelopersState();
}

class _AboutDevelopersState extends State<AboutDevelopers> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      // appBar: AppBar(
      //   elevation: 3,
      //   title: const Text(
      //     'Developers',
      //     style: TextStyle(
      //       fontFamily: 'ChelaOne-Regular',
      //       fontSize: 40,
      //       color: AppColor.mainAppColor,
      //     ),
      //   ),
      //   centerTitle: true,
      // ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: height / 12,
              ),
              Developer(
                width: width,
                height: height,
                imagePath: 'assets/chuksdev.jpg',
                nickName: 'chuksDev💙',
                fullName: 'Edoki Chukwuyem',
                title: 'Mobile App Developer',
                location: 'Asaba, Nigeria',
                aboutText:
                    'More than 1 year experience in fundamentals of programming in Java, C, Scripting language, design concepts, version control systems API consumption and lots more',
                whatICanDO:
                    'I build mobile applications which are easily to maintain and scalable with accurate compliance to design and following good practices',
                emailLink: 'https://wa.me/qr/KDHE2Y223QWCC1',
                facebookLink: 'https://www.facebook.com/edoki.chukwuyem',
                linkedinLink:
                    'https://www.linkedin.com/in/edoki-chukwuyem-659688220',
                telegramLink: 'https://wa.me/qr/KDHE2Y223QWCC1',
                twitterLink:
                    'https://twitter.com/chukscoDev?t=qtWAHpdbxY3TW5Y9b3Q_BA&s=09',
                whatappLink: 'https://wa.me/qr/KDHE2Y223QWCC1',
                isVisible1: true,
                isVisible2: true,
                skillAndTools1: 'assets/flutter.png',
                skillAndTools2: 'assets/dart.png',
                skillAndTools3: 'assets/Java.png',
                skillAndTools4: 'assets/git logo.jpg',
                skillAndTools5: 'assets/figma.png',
              ),
              SizedBox(
                height: height / 12,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
