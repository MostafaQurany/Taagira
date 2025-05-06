import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomeLayout extends StatelessWidget {
  const HomeLayout({
    super.key,
    required this.navigationShell, // Provided by StatefulShellRoute
  });

  final StatefulNavigationShell navigationShell;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: navigationShell, // The current page for the selected branch
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: navigationShell.currentIndex,
        onTap: (index) => _onTap(context, index),
        type: BottomNavigationBarType.fixed, // Ensures all items are visible
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favorite', // Replace with localization later
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            label: 'Chat', // Replace with localization later
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.car_rental), // Assuming you have a 'recent' icon
            label: 'Rental', // Replace with localization later
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
            // Replace with localization later
          ),
        ],
      ),
    );
  }

  // Private helper method to navigate using the shell
  void _onTap(BuildContext context, int index) {
    navigationShell.goBranch(
      index,
      // Navigate to the initial location when tapping the item that is
      // already active
      initialLocation: index == navigationShell.currentIndex,
    );
  }
}
