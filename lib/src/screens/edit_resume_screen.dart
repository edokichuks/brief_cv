import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hng_task2/src/model/cv_model.dart';
import 'package:hng_task2/src/screens/resume.dart';
import 'package:hng_task2/src/widgets/app_button.dart';
import 'package:hng_task2/src/widgets/app_text_field.dart';
class EditResumeScreen extends StatefulWidget {
  final CVData cvData;

  EditResumeScreen({required this.cvData});

  @override
  _EditResumeScreenState createState() => _EditResumeScreenState();
}

class _EditResumeScreenState extends State<EditResumeScreen> {
  late TextEditingController _nameController;
  late TextEditingController _slackController;
  late TextEditingController _githubController;
  late TextEditingController _bioController;

  @override
  void initState() {
    super.initState();
    _nameController = TextEditingController(text: widget.cvData.name);
    _slackController = TextEditingController(text: widget.cvData.slackUsername);
    _githubController = TextEditingController(text: widget.cvData.githubHandle);
    _bioController = TextEditingController(text: widget.cvData.bio);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Edit CV'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 12,
            ),
            AppTextFiled(
              label: 'Name',
              controller: _nameController,
            ),
            const SizedBox(
              height: 12,
            ),
            AppTextFiled(
              label: 'Slack Username',
              controller: _slackController,
            ),
            const SizedBox(
              height: 12,
            ),
            AppTextFiled(
              label: 'GitHub Handle',
              controller: _githubController,
            ),
            const SizedBox(
              height: 12,
            ),
            AppTextFiled(
              label: 'Bio',
              controller: _bioController,
              maxLines: 4,
            ),
            const SizedBox(height: 16),
            AppButton(
                text: 'Save',
                isEnabled: true,
                onTap: () {
                  setState(() {
                    widget.cvData.name = _nameController.text;
                    widget.cvData.slackUsername = _slackController.text;
                    widget.cvData.githubHandle = _githubController.text;
                    widget.cvData.bio = _bioController.text;
                  });
                  Navigator.push(
                      context,
                      CupertinoModalPopupRoute(
                        builder: (context) =>
                            AboutDevelopers(cvData: widget.cvData),
                      ));
                }),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    // Dispose of controllers when the page is disposed.
    _nameController.dispose();
    _slackController.dispose();
    _githubController.dispose();
    _bioController.dispose();
    super.dispose();
  }
}
