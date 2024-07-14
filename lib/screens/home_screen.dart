import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:store_app/widgets/app_bar_icon.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // elevation: 4,
        title: const Text('Home'),
        leading: AppBarIcon(
          function: () {},
          icon: IconlyBold.category,
        ),
        actions: [
          AppBarIcon(
            function: () {},
            icon: IconlyBold.user3,
          ),
        ],
      ),
    );
  }
}
