import 'package:flutter/material.dart';
import 'package:hng_task2/src/constants/app_color.dart';
// import 'package:url_launcher/url_launcher.dart';

class Developer extends StatelessWidget {
  final String imagePath;
  final String nickName;
  final String fullName;
  final String title;
  final String location;
  final String whatappLink;
  final String telegramLink;
  final String twitterLink;
  final String facebookLink;
  final String linkedinLink;
  final String emailLink;
  final String aboutText;
  final String whatICanDO;
  final bool isVisible1;
  final bool isVisible2;
  final String skillAndTools1;
  final String skillAndTools2;
  final String skillAndTools3;
  final String skillAndTools4;
  final String skillAndTools5;
  final String githubHandle;

  const Developer({
    Key? key,
    required this.isVisible1,
    required this.isVisible2,
    required this.skillAndTools1,
    required this.skillAndTools2,
    required this.skillAndTools3,
    required this.skillAndTools4,
    required this.skillAndTools5,
    required this.width,
    required this.height,
    required this.imagePath,
    required this.nickName,
    required this.fullName,
    required this.title,
    required this.whatICanDO,
    required this.location,
    required this.whatappLink,
    required this.telegramLink,
    required this.twitterLink,
    required this.facebookLink,
    required this.linkedinLink,
    required this.emailLink,
    required this.aboutText,
    required this.githubHandle,
  }) : super(key: key);

  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: height / 50,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5),
      ),
      child: Column(
        children: [
          Stack(
            clipBehavior: Clip.none,
            alignment: Alignment.center,
            children: [
              Container(
                width: width,
                height: height / 6,
                decoration: BoxDecoration(
                  color: AppColor.mainAppColor,
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
              Positioned(
                left: width / 17,
                bottom: height / 34.15,
                child: Container(
                  decoration: BoxDecoration(
                      boxShadow: const [
                        BoxShadow(
                          offset: Offset(0, 4),
                          blurRadius: 4,
                          spreadRadius: 0,
                          color: Color.fromRGBO(0, 0, 0, 0.25),
                        ),
                      ],
                      borderRadius: BorderRadius.circular(
                        width / 5.34,
                      )),
                  child: CircleAvatar(
                    radius: width / 5.343,
                    backgroundImage: AssetImage(
                      imagePath,
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Container(
                  margin: EdgeInsets.symmetric(
                    horizontal: width / 13.714,
                  ),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 7,
                  ),
                  width: width / 2.7,
                  height: height / 8,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7),
                    boxShadow: const [
                      BoxShadow(
                        offset: Offset(0, 4),
                        blurRadius: 4,
                        spreadRadius: 0,
                        //color: AppTheme.lightBlue,
                        color: Color.fromRGBO(0, 0, 0, 0.25),
                      ),
                    ],
                    color: Colors.brown.shade500,
                    gradient: const LinearGradient(
                      colors: [
                        Color.fromRGBO(255, 255, 255, 0.82),
                        Color.fromRGBO(255, 255, 255, 0),
                      ],
                      begin: Alignment.topLeft,
                      //   stops: [0.5, 0.9],
                      end: Alignment.bottomLeft,
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        fullName,
                        style: const TextStyle(
                          fontSize: 20,
                          fontFamily: 'ChelaOne-Regular',
                          letterSpacing: 0.5,
                        ),
                      ),
                      Text(
                        title,
                      ),
                      Text(
                        '@$nickName',
                        style: const TextStyle(
                          fontFamily: 'ChelaOne-Regular',
                          letterSpacing: 0.5,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Row(
                children: [
                  Text(
                    'Github Handle',
                    style: TextStyle(
                      fontFamily: 'ChelaOne-Regular',
                      letterSpacing: 0.5,
                      color: AppColor.mainAppColor,
                      fontSize: 20,
                    ),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Text(
                    githubHandle,
                    style: const TextStyle(
                      fontStyle: FontStyle.italic,
                      fontSize: 15,
                      fontFamily: 'ChelaOne-Regular',
                      letterSpacing: 1.5,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'About Developer',
                style: TextStyle(
                  fontFamily: 'ChelaOne-Regular',
                  letterSpacing: 0.5,
                  color: AppColor.mainAppColor,
                  fontSize: 20,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              aboutText,
              textAlign: TextAlign.left,
              style: const TextStyle(
                fontSize: 15,
                fontFamily: 'ChelaOne-Regular',
                letterSpacing: 1.5,
              ),
            ),
          ),
          // const SizedBox(
          //   height: 10,
          // ),
          // const Padding(
          //   padding: EdgeInsets.symmetric(horizontal: 20.0),
          //   child: Align(
          //     alignment: Alignment.centerLeft,
          //     child: Text(
          //       'What I Can Do',
          //       style: TextStyle(
          //         fontFamily: 'ChelaOne-Regular',
          //         letterSpacing: 0.5,
          //         color: AppColor.mainAppColor,
          //         fontSize: 20,
          //       ),
          //     ),
          //   ),
          // ),
          // Padding(
          //   padding: const EdgeInsets.symmetric(horizontal: 20),
          //   child: Text(
          //     whatICanDO,
          //     style: const TextStyle(
          //       fontSize: 15,
          //       fontFamily: 'ChelaOne-Regular',
          //       letterSpacing: 1.5,
          //     ),
          //   ),
          // ),
          const SizedBox(
            height: 10,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Skills and tools',
                style: TextStyle(
                  fontFamily: 'ChelaOne-Regular',
                  letterSpacing: 0.5,
                  color: AppColor.mainAppColor,
                  fontSize: 20,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(
                  height: 40,
                  width: 40,
                  child: Image.asset(
                    skillAndTools1,
                    fit: BoxFit.contain,
                  ),
                ),
                Visibility(
                  visible: isVisible1,
                  child: SizedBox(
                    height: 40,
                    width: 40,
                    child: Image.asset(
                      skillAndTools2,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                SizedBox(
                  height: 40,
                  width: 40,
                  child: Image.asset(
                    skillAndTools3,
                    fit: BoxFit.contain,
                  ),
                ),
                Visibility(
                  visible: isVisible2,
                  child: SizedBox(
                    height: 40,
                    width: 40,
                    child: Image.asset(
                      skillAndTools5,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                SizedBox(
                  height: 40,
                  width: 40,
                  child: Image.asset(
                    skillAndTools4,
                    fit: BoxFit.contain,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Social Profile',
                style: TextStyle(
                  fontFamily: 'ChelaOne-Regular',
                  letterSpacing: 0.5,
                  color: AppColor.mainAppColor,
                  fontSize: 20,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                InkWell(
                  onTap: () async {
                    // final webParse = Uri.parse(linkedinLink);
                    // if (await canLaunchUrl(webParse)) {
                    //   if (!await launchUrl(
                    //     webParse,
                    //     mode: LaunchMode.externalNonBrowserApplication,
                    //   )) {}
                    // } else {
                    //   throw "Could not launch $webParse";
                    // }
                  },
                  child: const CircleAvatar(
                    backgroundImage: AssetImage('assets/linkedin logo.png'),
                    radius: 15,
                    backgroundColor: Colors.white,
                  ),
                ),
                const SizedBox(width: 5),
                InkWell(
                  onTap: () async {
                    // final webParse = Uri.parse(whatappLink);
                    // if (await canLaunchUrl(webParse)) {
                    //   if (!await launchUrl(
                    //     webParse,
                    //     mode: LaunchMode.externalNonBrowserApplication,
                    //   )) {}
                    // } else {
                    //   throw "Could not launch $webParse";
                    // }
                  },
                  child: const CircleAvatar(
                    backgroundImage: AssetImage('assets/whatsapp-logo.png'),
                    radius: 15,
                    backgroundColor: Colors.white,
                  ),
                ),
                const SizedBox(width: 5),
                InkWell(
                  onTap: () async {
                    // final webParse = Uri.parse(twitterLink);
                    // if (await canLaunchUrl(webParse)) {
                    //   if (!await launchUrl(
                    //     webParse,
                    //     mode: LaunchMode.externalNonBrowserApplication,
                    //   )) {}
                    // } else {
                    //   throw "Could not launch $webParse";
                    // }
                  },
                  child: const CircleAvatar(
                    backgroundImage: AssetImage('assets/twitter.png'),
                    radius: 15,
                    backgroundColor: Colors.white,
                  ),
                ),
                const SizedBox(width: 5),
                InkWell(
                  onTap: () async {
                    // final webParse = Uri.parse(facebookLink);
                    // if (await canLaunchUrl(webParse)) {
                    //   if (!await launchUrl(
                    //     webParse,
                    //     mode: LaunchMode.externalNonBrowserApplication,
                    //   )) {}
                    // } else {
                    //   throw "Could not launch $webParse";
                    // }
                  },
                  child: const CircleAvatar(
                    backgroundImage: AssetImage('assets/fblogo.png'),
                    radius: 15,
                    backgroundColor: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
