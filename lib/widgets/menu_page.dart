import 'package:flutter/material.dart';
import 'package:menu_application/widgets/menu_widget.dart';

// TODO: вынести в папку pages
class MenuPage extends StatelessWidget {
  const MenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Flutter Demo',
        ),
        backgroundColor: Colors.black,
      ),
      body: const MenuWidget(),
    );
  }
}
