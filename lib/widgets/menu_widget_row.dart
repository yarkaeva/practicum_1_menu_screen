import 'package:flutter/material.dart';
import 'package:menu_application/widgets/menu_widget.dart';
import 'text_and_icon_model.dart';

class MenuWidgetRow extends StatelessWidget {
  const MenuWidgetRow({
    super.key,
    required this.dataWidgetRow,
  });
  final TextAndIcon dataWidgetRow;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      child: Row(
        children: [
          Icon(dataWidgetRow.icon),
          const SizedBox(width: 15),
          Expanded(child: Text(dataWidgetRow.text)),
        ],
      ),
    );
  }
}
