import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sample_state_managements/screen/home_screen.dart';
import 'package:sample_state_managements/screen/item_screen.dart';
import 'package:sample_state_managements/service/user_service.dart';

class BottomNavScreen extends ConsumerStatefulWidget {
  const BottomNavScreen({super.key});

  @override
  ConsumerState<BottomNavScreen> createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends ConsumerState<BottomNavScreen> {
  int index = 0;



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: [
        const CounterScreen(),
        const ItemScreen(),
      ][index],
      bottomNavigationBar: BottomNavigationBar(
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
        ],
      ),
    );
  }
}
