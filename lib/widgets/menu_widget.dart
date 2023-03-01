import 'package:flutter/material.dart';
import 'package:menu_application/data.dart';
import 'menu_widget_row.dart';

class TextAndIcon {
  TextAndIcon({required this.text, required this.icon});

  final String text;
  final IconData icon;
}

class MenuWidget extends StatelessWidget {
  const MenuWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final List<IconData> icons = Data.data.values.toList();
    final List<String> texts = Data.data.keys.toList();

    List<TextAndIcon> twoListsInOne = List.generate(
      Data.data.length,
      (index) => TextAndIcon(
        icon: icons[index],
        text: texts[index],
      ),
    );

    final List<Widget> menuRows = twoListsInOne
        .map((TextAndIcon dataWidgetRow) =>
            MenuWidgetRow(dataWidgetRow: dataWidgetRow))
        .toList();

    return Column(
      children: menuRows,
    );
  }
}
