import 'package:flutter/material.dart';

import '../../../helper/functions.dart';
import '../first_screen/first_screen.dart';
import 'widgets/widgets.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key}) : super(key: key);
  static String routeName = '/DetailScreen';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: true,
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
          backgroundColor: Colors.white,
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                DetailScreenCarImageBar(
                  backPress: () {
                    Navigator.of(context)
                        .pushReplacementNamed(FirstScreen.routeName);
                    editStatusBar();
                  },
                ),
                const DetailScreenCarInfoBar(),
                const DetailScreenCarStatusAndSalaryBar(),
                const DetailScreenCarGuaranteedToBar(),
                const SizedBox(height: 9),
                const DetailScreenCarSpecifications(),
                const DetailScreenCarTextDetails(
                  detailText: """
تنقسم السيارات إلى عدة أنواع منها السيارات الصغيرة الخاصة، وأكثرها يمتلكها الأشخاص العاديون ويستعملونها للذهاب إلى العمل أو تنقل العائلة من مكان إلى آخر وللقيام بالرحلات. ومنها الحافلات الكبيرة التي تستخدم لنقل الركاب وهي من وسائل النقل العام المنتشرة في جميع البلاد. ومنها الكبيرة، الشاحنات، التي تستعمل لنقل البضائع، وهي بذلك تعتبر العنصر الأساسي في الدول الصناعية في دفع عجلة الاقتصاد إلى الأمام جنباً إلى جنب مع سكة الحديد.      """,
                ),
                const DetailScreenCarSupplier(),
                const SizedBox(height: 15),
                const DetailScreenOthersCarListBar(),
                const DetailScreenRowButtons()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
