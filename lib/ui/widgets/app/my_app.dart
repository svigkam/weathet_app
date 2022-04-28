import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weathet_app/ui/widgets/main_screen/main_screen_model.dart';

import 'package:weathet_app/ui/widgets/main_screen/main_screen_widget.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: ChangeNotifierProvider(
          child: const MainScreenWidget(),
          create: (_) => MainScreenModel(),
          lazy: false,
        ),
      ),
    );
  }
}
