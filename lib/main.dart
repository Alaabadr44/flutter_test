import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import 'helper/functions.dart';
import 'routes/routes.dart';
import 'view/screens/first_Screen/first_Screen.dart';

void main() {
  editStatusBar();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Material App',
          routes: myRoute,
          home: const FirstScreen(),
        );
      },
    );
  }
}
