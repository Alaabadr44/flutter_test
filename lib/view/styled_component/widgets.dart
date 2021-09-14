import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../constance/colors.dart';
import '../../constance/icons.dart';

class NotificationWidget extends StatelessWidget {
  const NotificationWidget({
    Key? key,
    required this.notificationNum,
  }) : super(key: key);

  final int notificationNum;
  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    return Stack(
      alignment: AlignmentDirectional.topStart,
      children: [
        SizedBox(
          child: SvgPicture.asset(iconHomeNotification),
          height: 25,
          width: _width * 0.05,
        ),
        Visibility(
          visible: notificationNum > 0,
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.white,
              ),
              borderRadius: BorderRadius.circular(7.0),
            ),
            child: CircleAvatar(
              backgroundColor: circleBorderColor,
              radius: 7,
              child: Center(
                child: Text(
                  notificationNum.toString(),
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 10,
                  ),
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}



class SearchFelid extends StatelessWidget {
  const SearchFelid({
    Key? key,
    required this.search,
  }) : super(key: key);

  final TextEditingController? search;

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    return TextField(
      cursorColor: mainColor,
      keyboardType: TextInputType.text,
      controller: search,
      onSubmitted: (String searchValue) {},
      decoration: InputDecoration(
        alignLabelWithHint: true,
        hintText: "إبحث عن سيارتك".padLeft((_width.toInt() * 0.07).toInt()),
        hintStyle: const TextStyle(
          color: mainColor,
          fontWeight: FontWeight.bold,
          fontSize: 20,
        ),
        prefixIcon: const Icon(
          Icons.search,
          color: mainColor,
          size: 30,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(color: Colors.grey, width: 4),
          // gapPadding:
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(color: mainColor, width: 2),
          // gapPadding:
        ),
        contentPadding: const EdgeInsets.symmetric(horizontal: 10),
      ),
    );
  }
}





class HomeOptionButtonItem extends StatelessWidget {
  final String buttonText;
  final void Function()? onPressed;
  const HomeOptionButtonItem({
    Key? key,
    required this.buttonText,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        primary: mainColor,
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
        ),
      ),
      onPressed: onPressed ?? () {},
      child: Text(
        buttonText,
        style: const TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w300,
        ),
      ),
    );
  }
}
