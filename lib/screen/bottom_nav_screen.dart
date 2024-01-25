import 'package:flutter/material.dart';
import 'package:sample_state_managements/screen/home_screen.dart';
import 'package:sample_state_managements/screen/item_screen.dart';
import 'package:sample_state_managements/screen/user_screen.dart';

class BottomNavScreen extends StatefulWidget {
  const BottomNavScreen({super.key});

  @override
  State<BottomNavScreen> createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends State<BottomNavScreen> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: [
        const CounterScreen(),
        const ItemScreen(),
        const UserScreen(),
      ][index],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,
        onTap: (value) {
          setState(() {
            index = value;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.calculate),
            label: 'Counter',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            label: 'Item',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'User',
          ),
        ],
      ),
    );
  }
}
