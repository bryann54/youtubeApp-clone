

import 'package:flutter/material.dart';
import 'package:youtube_clone/screens/homeScreen.dart';

class NavScreen extends StatefulWidget {
  const NavScreen({Key? key});

  @override
  State<NavScreen> createState() => _NavScreenState();
}

class _NavScreenState extends State<NavScreen> {
  int currentIndex = 0;

  final List<Widget> _screens = [
     HomeScreen(),
    const Center(child: Text('Explore')),
    const Center(child: Text('Add')),
    const Center(child: Text('Subscriptions')),
    const Center(child: Text('Library')),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
  children: _screens
      .asMap()
      .entries
      .map((entry) {
        final index = entry.key;
        final screen = entry.value;

        return Offstage(
          offstage: index != currentIndex,
          child: screen,
        );
      })
      .toList(),
),

      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
        onTap: (int i) {
          setState(() {
            currentIndex = i;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            activeIcon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.explore_outlined),
            activeIcon: Icon(Icons.explore),
            label: "Explore",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_circle_outlined),
            activeIcon: Icon(Icons.add_circle),
            label: "Add",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.subscriptions_outlined),
            activeIcon: Icon(Icons.subscriptions),
            label: "Subscriptions",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.video_library_outlined),
            activeIcon: Icon(Icons.video_library),
            label: "Library",
          ),
        ],
      ),
    );
  }
}
