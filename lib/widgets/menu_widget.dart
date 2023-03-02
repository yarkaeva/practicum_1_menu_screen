import 'package:flutter/material.dart';
import 'package:menu_application/data.dart';
import 'menu_widget_row.dart';
import 'text_and_icon_model.dart';

class MenuWidget extends StatelessWidget {
  MenuWidget({super.key});
  List<TextAndIcon> twoListsInOne = List.generate(
    Data.data.length,
    (index) => TextAndIcon(
      icon: Data.data.values.toList()[index],
      text: Data.data.keys.toList()[index],
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Column(
      children: twoListsInOne
          .map((TextAndIcon dataWidgetRow) =>
              MenuWidgetRow(dataWidgetRow: dataWidgetRow))
          .toList(),
    );
  }
}
