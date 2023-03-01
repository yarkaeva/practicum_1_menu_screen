import 'package:flutter/material.dart';
import 'menu_page.dart';

// TODO: в целом не очень нужно выносить MaterialApp в отдельный класс, принято размещать его в main.dart

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      /*
      TODO:
      Обращай внимание на замечания линтера. В данном случае он предлагает
      вызывать const  конструктор для улучшения производительности.
      Ошибок линтера быть не должно.
      */
      home: MenuPage(),
    );
  }
}
