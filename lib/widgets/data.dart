import 'package:flutter/material.dart';

/*
  Есть класс с данными, необходимо реализовать экран, который я тебе отправил.
  Обращаю твое внимание, что в работе понадобятся виджеты SizedBox и Padding,
  которые ты не проходила, почитай про них, это одна из основ вертски.
*/

/*
      TODO:
      Почему этот класс в папке widgets если это не виджет?
      */

class Data {
  static const Map<String, IconData> data = {
    'Home Page': Icons.home_outlined,
    'Favorite Page': Icons.favorite_outline,
    'Open in New': Icons.open_in_new,
    'Navigation': Icons.navigate_next_outlined,
    'Download Page': Icons.download_outlined,
  };
}
