import 'package:flutter/material.dart';

import '../view/screens/detail_screen/detail_screen.dart';
import '../view/screens/first_screen/first_screen.dart';

Map<String, WidgetBuilder> myRoute = {
  FirstScreen.routeName: (BuildContext context) => const FirstScreen(),
  DetailScreen.routeName: (BuildContext context) => const DetailScreen(),
};
