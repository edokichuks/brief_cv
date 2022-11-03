import 'package:flutter/material.dart';
import 'package:hng_task2/src/constants/app_color.dart';
import 'package:hng_task2/src/constants/app_string.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  final String profileUrl = 'assets/chuksdev.jpg';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey.shade300,
        body: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              Container(
                height: 180,
                color: Colors.teal.shade600,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      children: const [
                        linkWidget(
                          icon: Icons.phone,
                          label: AppString.phoneNumber,
                        ),
                        linkWidget(
                          icon: Icons.mail,
                          label: AppString.email,
                        ),
                        linkWidget(
                          icon: Icons.mail,
                          label: AppString.address,
                        ),
                      ],
                    ),
                    Expanded(
                      child: CircleAvatar(
                        radius: 50,
                        backgroundImage: AssetImage(profileUrl),
                      ),
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      children: const [
                        linkWidget(
                          icon: Icons.phone,
                          label: AppString.linkedin,
                        ),
                        linkWidget(
                          icon: Icons.mail,
                          label: AppString.twitter,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(AppString.name,
                  style: Theme.of(context)
                      .textTheme
                      .caption!
                      .copyWith(color: AppColor.mainColor, fontSize: 25)),
              const SizedBox(
                height: 10,
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
                margin: const EdgeInsets.symmetric(horizontal: 30),
                decoration: BoxDecoration(
                  border: Border.all(color: AppColor.mainColor, width: 1.5),
                ),
                child: Column(
                  children: [
                    Text(AppString.aboutMeS,
                        style:
                            Theme.of(context).textTheme.headline4!.copyWith()),
                    Text(
                      AppString.aboutMe,
                      style: Theme.of(context)
                          .textTheme
                          .caption!
                          .copyWith(fontSize: 12),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Divider(
                color: AppColor.mainColor,
                thickness: 1.5,
              )
            ],
          ),
        ),
      ),
    );
  }
}

class linkWidget extends StatelessWidget {
  final String label;
  final IconData icon;
  const linkWidget({
    Key? key,
    required this.label,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 150,
      child: ListTile(
        visualDensity: VisualDensity.compact,
        horizontalTitleGap: 0,
        leading: CircleAvatar(
          radius: 15,
          backgroundColor: Colors.white,
          child: Icon(
            icon,
            size: 15,
            color: AppColor.mainColor,
          ),
        ),
        title: Text(label,
            style: Theme.of(context)
                .textTheme
                .caption!
                .copyWith(color: Colors.white)),
      ),
    );
  }
}
