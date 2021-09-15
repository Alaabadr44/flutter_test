import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../constance/colors.dart';
import '../../../../constance/icons.dart';
import '../../../../constance/images.dart';
import '../../../../model/car_specifications.dart';
import '../../../../model/home_Cars_Grid_item.dart';
import '../../first_screen/widgets/widgets.dart';

class DetailScreenRowButtons extends StatelessWidget {
  const DetailScreenRowButtons({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _height = MediaQuery.of(context).size.height;
    double _width = MediaQuery.of(context).size.width;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: SizedBox(
        height: _height * 0.15,
        width: _width,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                DetailScreenCircleBottomButton(
                  backGroundColor: Colors.greenAccent,
                  iconColor: Colors.green,
                  iconPath: iconCarPageCall,
                  onPressed: () {},
                ),
                DetailScreenCircleBottomButton(
                  backGroundColor: Colors.blueAccent,
                  iconColor: mainColor,
                  iconPath: iconCarPageChatByWHatsApp,
                  onPressed: () {},
                ),
              ],
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  DetailScreenBottomIconButton(
                    buttonColor: mainColor,
                    buttonText: "موقع السيارة",
                    iconColor: Colors.white,
                    iconPath: iconCarPageLocation,
                    textColor: Colors.white,
                    onPressed: () {},
                  ),
                  DetailScreenBottomIconButton(
                    buttonColor: Colors.white,
                    buttonText: "إحجز سيارتك",
                    iconColor: mainColor,
                    iconPath: iconCarPageBook,
                    textColor: mainColor,
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DetailScreenCircleBottomButton extends StatelessWidget {
  const DetailScreenCircleBottomButton({
    Key? key,
    required this.iconPath,
    required this.iconColor,
    required this.backGroundColor,
    required this.onPressed,
  }) : super(key: key);
  final String iconPath;
  final Color iconColor;
  final Color backGroundColor;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      icon: CircleAvatar(
        backgroundColor: backGroundColor.withOpacity(0.3),
        foregroundColor: Colors.transparent,
        radius: 20,
        child: SvgPicture.asset(
          iconPath,
          height: 15,
          width: 15,
          color: iconColor,
        ),
      ),
    );
  }
}

class DetailScreenBottomIconButton extends StatelessWidget {
  const DetailScreenBottomIconButton({
    Key? key,
    required this.buttonText,
    required this.iconPath,
    required this.iconColor,
    required this.buttonColor,
    required this.textColor,
    required this.onPressed,
  }) : super(key: key);
  final String buttonText;
  final String iconPath;
  final Color buttonColor;
  final Color iconColor;
  final Color textColor;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    double _height = MediaQuery.of(context).size.height;
    double _width = MediaQuery.of(context).size.width;

// just for solution for location icon
    Icon? location = iconPath == iconCarPageLocation
        ? Icon(
            Icons.location_on_outlined,
            color: Colors.white.withOpacity(0.45),
            size: 25,
          )
        : null;

    return SizedBox(
      height: _height * 0.055,
      width: _width * 0.342,
      child: ElevatedButton.icon(
        onPressed: onPressed,
        icon: location == null
            ? SvgPicture.asset(
                iconPath,
                height: (_height * 0.07) * 0.5,
                width: (_width * 0.35) * 0.05,
                color: iconColor,
                fit: BoxFit.cover,
              )
            : SizedBox(child: location),
        label: Text(
          buttonText,
          style: TextStyle(
            color: textColor,
            fontSize: 15,
            fontWeight: FontWeight.w300,
          ),
        ),
        style: ElevatedButton.styleFrom(
          primary: buttonColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
            side: const BorderSide(
              color: mainColor,
              width: 2,
            ),
          ),
        ),
      ),
    );
  }
}

class DetailScreenOthersCarListBar extends StatelessWidget {
  const DetailScreenOthersCarListBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _height = MediaQuery.of(context).size.height;
    double _width = MediaQuery.of(context).size.width;
    return SizedBox(
      height: _height * 0.20,
      width: _width,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: 2,
        separatorBuilder: (BuildContext context, int index) {
          return const SizedBox(width: 2);
        },
        itemBuilder: (BuildContext context, int index) {
          return DetailScreenOtherCarItem(
            carImage: gridCars[index].carImage,
            topHeadLineInfo: gridCars[index].topHeadLine,
            detailsCarInfo: [
              HomeDetailsCarItem(
                iconPath: getCarInfoTypeIconPath(CarDetails.salary),
                infoType: getCarInfoTypeWord(CarDetails.salary),
                infoValue: "12700",
              ),
              HomeDetailsCarItem(
                iconPath: getCarInfoTypeIconPath(CarDetails.yearOfManufacture),
                infoType: getCarInfoTypeWord(CarDetails.yearOfManufacture),
                infoValue: "2019",
              ),
              HomeDetailsCarItem(
                iconPath: getCarInfoTypeIconPath(CarDetails.kilometer),
                infoType: getCarInfoTypeWord(CarDetails.kilometer),
                infoValue: "20000",
              ),
              HomeDetailsCarItem(
                // iconPath: "",
                iconPath: getCarInfoTypeIconPath(CarDetails.guaranteedTo),
                infoType: getCarInfoTypeWord(CarDetails.guaranteedTo),
                infoValue: "2021",
              ),
            ],
          );
        },
      ),
    );
  }
}

class DetailScreenCarSupplier extends StatelessWidget {
  const DetailScreenCarSupplier({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _height = MediaQuery.of(context).size.height;
    double _width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Container(
        height: _height * 0.065,
        width: double.infinity,
        // color: const Color(0xffd9dee6),
        decoration: BoxDecoration(
          color: Colors.grey.withOpacity(0.3),
          borderRadius: BorderRadius.circular(20),
        ),
        child: ListTile(
          title: const Text(
            "يوكن للسيارات المعتمدة ",
            style: TextStyle(
              color: Colors.black,
              fontSize: 15,
              fontWeight: FontWeight.w400,
            ),
          ),
          leading: Container(
            height: _height * 0.05,
            width: _width * 0.10,
            padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.white,
              ),
              // borderRadius: BorderRadius.circular(7.0),
              shape: BoxShape.circle,
            ),
            child: const CircleAvatar(
              backgroundImage: AssetImage(
                image1,
              ),
              radius: 7,
            ),
          ),
          trailing: const Text(
            "كل السيارات",
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.w400,
            ),
          ),
          horizontalTitleGap: 30,
        ),
      ),
    );
  }
}

class DetailScreenCarTextDetails extends StatelessWidget {
  const DetailScreenCarTextDetails({
    Key? key,
    required this.detailText,
  }) : super(key: key);
  final String detailText;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        detailText,
        style: const TextStyle(
          fontSize: 15,
          color: Colors.black,
          fontWeight: FontWeight.w600,
          // height: 20,
        ),
        maxLines: 6,
        overflow: TextOverflow.visible,
        textAlign: TextAlign.start,
      ),
    );
  }
}

class DetailScreenCarSpecifications extends StatelessWidget {
  const DetailScreenCarSpecifications({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _height = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        height: _height * 0.3,
        width: double.infinity,
        child: ListView.separated(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.vertical,
          itemCount: 8,
          separatorBuilder: (BuildContext context, int index) {
            return SizedBox(
              height: _height * 0.01,
            );
          },
          itemBuilder: (BuildContext context, int index) {
            return Container(
              height: _height * 0.04,
              color: const Color(0xfff7f7fd),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      carSpecifications[index].carSpecificationIcon,
                      Text(
                        carSpecifications[index].carSpecificationText,
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ],
                  ),
                  Text(carSpecifications[index].carSpecificationValue),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}

class DetailScreenCarGuaranteedToBar extends StatelessWidget {
  const DetailScreenCarGuaranteedToBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _height = MediaQuery.of(context).size.height;
    double _width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Container(
        height: _height * 0.065,
        width: _width,
        decoration: BoxDecoration(
          color: const Color(0xffa55959),
          borderRadius: BorderRadius.circular(20),
        ),
        child: ListTile(
          horizontalTitleGap: 20,
          leading: SvgPicture.asset(
            iconHomeAd4,
            height: _height * 0.033,
            width: _width * 0.03,
            color: Colors.white,
          ),
          title: const Text(
            "مكفولة حتى 70000  كم",
            style: TextStyle(
              color: Colors.white,
              fontSize: 17,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }
}

class DetailScreenCarStatusAndSalaryBar extends StatelessWidget {
  const DetailScreenCarStatusAndSalaryBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            "يوكن بحالة جيدة ",
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.w400,
            ),
          ),
          Wrap(
            children: const [
              Text(
                "8,700 ",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                  fontWeight: FontWeight.w900,
                ),
              ),
              Text(
                "د.ك ",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class DetailScreenCarInfoBar extends StatelessWidget {
  const DetailScreenCarInfoBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _height = MediaQuery.of(context).size.height;
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          height: _height * 0.10,
          width: 400,
          color: Colors.white,
        ),
        Positioned.directional(
          textDirection: TextDirection.rtl,
          top: -((_height * 0.30) * 0.243),
          start: 0,
          end: 0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const [
              DetailScreenCarInfoItem(
                iconPath: iconCarPageSlindr,
                infoWord: "المحرك /  سليندر",
                infoValue: 6,
              ),
              DetailScreenCarInfoItem(
                iconPath: iconHomeAd2,
                infoValue: 2019,
                infoWord: "سنة التصنيع",
              ),
              DetailScreenCarInfoItem(
                iconPath: iconHomeAd3,
                infoValue: 2000,
                infoWord: "المشي",
              ),
            ],
          ),
        )
      ],
    );
  }
}

class DetailScreenCarInfoItem extends StatelessWidget {
  const DetailScreenCarInfoItem({
    Key? key,
    required this.iconPath,
    required this.infoWord,
    required this.infoValue,
  }) : super(key: key);

  final String iconPath;
  final String infoWord;
  final int infoValue;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double _width = MediaQuery.of(context).size.width;

    double cardHeight = height * 0.165;
    double cardWidth = _width * 0.255;

    return Container(
      height: cardHeight,
      width: cardWidth,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: const Color(0xfff7f7fd),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SvgPicture.asset(
            iconPath,
            height: cardHeight * 0.3,
            width: cardWidth * 0.3,
          ),
          SizedBox(height: cardHeight * 0.1),
          Text(
            infoWord,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 13,
              fontWeight: FontWeight.w500,
            ),
          ),
          Text(
            infoValue.toString(),
            style: const TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.w900,
            ),
          ),
        ],
      ),
    );
  }
}

class DetailScreenCarImageBar extends StatelessWidget {
  const DetailScreenCarImageBar({
    Key? key,
    required this.backPress,
  }) : super(key: key);

  final void Function()? backPress;
  @override
  Widget build(BuildContext context) {
    double _height = MediaQuery.of(context).size.height;
    return SizedBox(
      height: _height * 0.30,
      width: double.infinity,
      child: Stack(
        children: [
          SizedBox(
            child: Image.asset(image6),
          ),
          Positioned.directional(
            textDirection: TextDirection.rtl,
            top: 10,
            start: 5,
            child: DetailScreenIconWidget(
              iconPath: iconBackIcon,
              onIconPress: backPress,
            ),
          ),
          Positioned.directional(
            textDirection: TextDirection.rtl,
            top: 10,
            end: 10,
            child: Row(
              children: [
                DetailScreenIconWidget(
                  iconPath: iconCarPageShare,
                  onIconPress: () {},
                ),
                const SizedBox(width: 10),
                DetailScreenIconWidget(
                  iconPath: iconCarPageFav,
                  onIconPress: () {},
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class DetailScreenIconWidget extends StatelessWidget {
  const DetailScreenIconWidget({
    Key? key,
    required this.iconPath,
    required this.onIconPress,
  }) : super(key: key);
  final String iconPath;
  final void Function()? onIconPress;
  @override
  Widget build(BuildContext context) {
    double _height = MediaQuery.of(context).size.height;
    double _width = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: onIconPress,
      child: Container(
        padding: const EdgeInsets.all(7),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.white.withOpacity(0.5),
        ),
        child: Center(
          child: SvgPicture.asset(
            iconPath,
            height: _height * 0.03,
            width: _width * 0.03,
          ),
        ),
      ),
    );
  }
}

class DetailScreenOtherCarItem extends StatelessWidget {
  const DetailScreenOtherCarItem({
    Key? key,
    required this.carImage,
    required this.topHeadLineInfo,
    required this.detailsCarInfo,
    this.onCarItemPress,
  }) : super(key: key);

  final String carImage;
  final String topHeadLineInfo;
  final void Function()? onCarItemPress;
  final List<HomeDetailsCarItem> detailsCarInfo;
  @override
  Widget build(BuildContext context) {
    double _height = MediaQuery.of(context).size.height;
    double _width = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: onCarItemPress,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          SizedBox(
            height: _height * 0.25,
            width: _width * 0.49,
            child: Image.asset(
              carImage,
              fit: BoxFit.fitWidth,
              alignment: Alignment.bottomCenter,
              height: 20,
              width: 20,
            ),
          ),
          Positioned.directional(
            textDirection: TextDirection.rtl,
            top: 0,
            start: 0,
            end: 0,
            child: Container(
              width: 250,
              height: 20,
              color: Colors.white.withOpacity(0.5),
              child: Center(
                child: Text(
                  topHeadLineInfo,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: mainColor,
                    // fontSize: 13,
                  ),
                ),
              ),
            ),
          ),
          Positioned.directional(
            textDirection: TextDirection.rtl,
            bottom: -10,
            start: 0,
            end: 0,
            child: SizedBox(
              width: 290,
              height: 45,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: detailsCarInfo,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
