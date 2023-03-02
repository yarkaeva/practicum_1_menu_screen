import 'package:flutter/material.dart';
import 'package:menu_application/data.dart';
import 'menu_widget_row.dart';

// TODO: Один файл - один класс! Можешь вынести в файл text_and_icon_model.dart
class TextAndIcon {
  TextAndIcon({required this.text, required this.icon});

  final String text;
  final IconData icon;
}

class MenuWidget extends StatelessWidget {
  const MenuWidget({super.key});

  @override
  Widget build(BuildContext context) {
    /* 
    TODO: нет смысла выносить это в отдельные переменные, особенно 
    в функции build, которая вызывается при каждой перерисовке. 
    Раз эти переменные вызываются один раз, легче напрямую передавать данные 
    (icon:  Data.data.values.toList()[index]). А если несколько вызовов, 
    то лучше за пределами build объявлять переменную или геттер. 

    Вообще в функции build должен быть только return, все нужные вычисления 
    лучше проводить за её пределами. В данном случае в них даже нет смысла.
    */
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
