import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hng_task2/src/constants/app_color.dart';
import 'package:hng_task2/src/constants/app_string.dart';
import 'package:hng_task2/src/model/cv_model.dart';
import 'package:hng_task2/src/screens/edit_resume_screen.dart';
import 'package:hng_task2/src/widgets/app_button.dart';

import '../widgets/developer.dart';

class AboutDevelopers extends StatefulWidget {
  const AboutDevelopers({Key? key, required this.cvData}) : super(key: key);

  final CVData cvData;
  @override
  State<AboutDevelopers> createState() => _AboutDevelopersState();
}

class _AboutDevelopersState extends State<AboutDevelopers> {
  bool isLoading = false;
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Center(
        child: Padding(
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
                  imagePath: 'assets/Pic Chuks.jpeg',
                  nickName: widget.cvData.slackUsername,
                  fullName: widget.cvData.name,
                  // fullName: 'Edoki Chukwuyem',
                  title: 'Mobile App Developer',
                  location: 'Asaba, Nigeria',
                  aboutText: widget.cvData.bio,
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
                  githubHandle: widget.cvData.githubHandle,
                ),
                SizedBox(
                  height: height / 12,
                ),
                AppButton(
                    text: 'Edit CV',
                    isEnabled: true,
                    isLoading: isLoading,
                    onTap: () {
                      Navigator.push(
                          context,
                          CupertinoModalPopupRoute(
                            builder: (context) =>
                                EditResumeScreen(cvData: widget.cvData),
                          ));
                    })
              ],
            ),
          ),
        ),
      ),
    );
  }
}
