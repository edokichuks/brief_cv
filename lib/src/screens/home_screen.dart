import 'package:flutter/material.dart';
import 'package:hng_task2/src/constants/app_string.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 300,
            color: Colors.teal.shade400,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const ListTile(
                  leading: CircleAvatar(
                    child: Icon(Icons.phone_android),
                  ),
                  title: Text(AppString.phoneNumber),
                ),
                Expanded(
                  child: Image.asset('name'),
                ),
                Text(AppString.name,),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
