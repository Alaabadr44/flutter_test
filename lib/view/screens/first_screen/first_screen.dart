// ignore_for_file: file_names

import 'package:flutter/material.dart';

import '/view/screens/detail_screen/detail_screen.dart';
import '../../../constance/images.dart';
import '../../../helper/functions.dart';
import 'widgets/widgets.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({
    Key? key,
  }) : super(key: key);
  static String routeName = '/FirstScreen';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
          backgroundColor: Colors.white,
          body: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const FirstScreenAppBar(),
                const CarsStoryBar(),
                const HomeImageBar(imagePath: image4),
                const SizedBox(height: 5),
                const HomeSearchBar(),
                const SizedBox(height: 5),
                const HomeOptionsBar(),
                // const SizedBox(height: 10),
                //just for develope to just move into DetailScreen
                GridCarsView(
                  onCarItemPress: () {
                    Navigator.of(context)
                        .pushReplacementNamed(DetailScreen.routeName);
                    showStatusBar();
                  },
                ),
                const HomeImageBar(imagePath: image2),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
