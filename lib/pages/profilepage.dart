import 'package:demo_project/core/constant.dart';
import 'package:demo_project/core/notifier.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
      ),
      body: Column(
        children: const [
          CircleAvatar(
            radius: 60,
            backgroundImage: AssetImage('images/User-Avatar-Profile-PNG.png'),
          ),
          SizedBox(height: kdouble20),
          ListTile(
            leading: Icon(Icons.person),
            title: Text(' Vehicle Description'),
          ),
          ListTile(
            leading: Icon(Icons.email),
            title: Text('demovehicle@flutter.com'),
          ),
          ListTile(
            leading: Icon(Icons.web),
            title: Text('Flutterdemo.com'),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          isDarkModeNotifier.value = !isDarkModeNotifier.value;
        },
        child: ValueListenableBuilder(
          valueListenable: isDarkModeNotifier,
          builder: (context, isDark, child) {
            if (!isDark) {
              return const Icon(Icons.dark_mode);
            }
            return const Icon(Icons.light_mode);
          },
        ),
      ),
    );
  }
}
