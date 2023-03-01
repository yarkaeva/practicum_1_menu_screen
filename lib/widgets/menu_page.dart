import 'package:flutter/material.dart';

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
      body: const _MenuWidget(),
    );
  }
}

class _MenuWidget extends StatelessWidget {
  const _MenuWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        _MenuWidgetRow(icon: Icons.home_outlined, text: 'Home Page'),
        _MenuWidgetRow(icon: Icons.favorite_outline, text: 'Favorite Page'),
        _MenuWidgetRow(icon: Icons.open_in_new, text: 'Open in New'),
        _MenuWidgetRow(icon: Icons.navigate_next_outlined, text: 'Navigation'),
        _MenuWidgetRow(icon: Icons.download_outlined, text: 'Download Page'),
      ],
    );
  }
}

class _MenuWidgetRow extends StatelessWidget {
  const _MenuWidgetRow({
    super.key,
    required this.icon,
    required this.text,
  });
  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          Icon(icon),
          const SizedBox(width: 15),
          Expanded(child: Text(text)),
        ],
      ),
    );
  }
}
