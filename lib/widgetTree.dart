import 'package:demo_project/pages/home_page.dart';
import 'package:demo_project/pages/profilepage.dart';
import 'package:flutter/material.dart';

class WidgetTree extends StatefulWidget {
  const WidgetTree({super.key});

  @override
  State<WidgetTree> createState() => _WidgetTreeState();
}

class _WidgetTreeState extends State<WidgetTree> {
  int currentpage = 0;
  List<Widget> pages = [
    const HomePage(),
    const ProfilePage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  pages.elementAt(currentpage),
      bottomNavigationBar: NavigationBar(
        destinations: const [
          NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
          NavigationDestination(icon: Icon(Icons.person), label: 'Profile'),
        ],
        selectedIndex: currentpage,
        onDestinationSelected: (int value) {
          setState(() {
            currentpage = value;
          });
        },
      ),
    );
  }
}
