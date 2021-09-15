import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../constance/colors.dart';
import '../../../../constance/icons.dart';
import '../../../../model/Home_Cars_Grid_item.dart';
import '../../../../model/cars_story_model.dart';
import '../../../styled_component/widgets.dart';

class FirstScreenAppBar extends StatelessWidget {
  const FirstScreenAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _hight = MediaQuery.of(context).size.height;
    double _width = MediaQuery.of(context).size.width;
    return Stack(
      children: [
        Container(
          height: _hight / 10,
          width: double.infinity,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                appBarBackGroundColorFirst,
                appBarBackGroundColorSecond,
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
        ),
        Positioned.directional(
          top: (_hight / 10) / 2,
          start: 10,
          textDirection: TextDirection.rtl,
          child: SizedBox(
            height: 25,
            width: _width * 0.05,
            child: SvgPicture.asset(iconHomeMenu),
          ),
        ),
        Positioned.directional(
          top: (_hight / 10) / 2,
          end: 10,
          textDirection: TextDirection.rtl,
          child: const NotificationWidget(
            notificationNum: 2,
          ),
        ),
      ],
    );
  }
}

class CarStoryItem extends StatelessWidget {
  const CarStoryItem({
    Key? key,
    required this.carImagePath,
    required this.carType,
  }) : super(key: key);

  final String carImagePath;
  final String carType;
  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          height: _height * 0.10,
          width: _width * 0.15,
          padding: const EdgeInsets.all(5),
          decoration: BoxDecoration(
            border: Border.all(
              color: circleBorderColor,
            ),
            // borderRadius: BorderRadius.circular(7.0),
            shape: BoxShape.circle,
          ),
          child: CircleAvatar(
            backgroundImage: AssetImage(
              carImagePath,
            ),
            radius: 7,
          ),
        ),
        Text(
          carType,
          style: const TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 20,
          ),
        )
      ],
    );
  }
}

class CarsStoryBar extends StatelessWidget {
  const CarsStoryBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _height = MediaQuery.of(context).size.height;
    double _width = MediaQuery.of(context).size.width;
    return Container(
      height: _height * 0.17,
      width: double.infinity,
      padding: const EdgeInsetsDirectional.only(start: 15, top: 2),
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        itemCount: 8,
        separatorBuilder: (BuildContext context, int index) {
          return SizedBox(width: (_width * 0.04));
        },
        itemBuilder: (BuildContext context, int index) {
          index = index >= 4 ? 0 : index;
          return CarStoryItem(
            carImagePath: carsStory[index].imagePath,
            carType: carsStory[index].type,
          );
        },
      ),
    );
  }
}

class HomeImageBar extends StatelessWidget {
  const HomeImageBar({
    Key? key,
    required this.imagePath,
  }) : super(key: key);

  final String imagePath;
  @override
  Widget build(BuildContext context) {
    double _height = MediaQuery.of(context).size.height;
    return SizedBox(
      width: double.infinity,
      height: _height * 0.25,
      child: Image.asset(
        imagePath,
        fit: BoxFit.cover,
      ),
    );
  }
}

class HomeSearchBar extends StatefulWidget {
  const HomeSearchBar({
    Key? key,
  }) : super(key: key);

  @override
  State<HomeSearchBar> createState() => _HomeSearchBarState();
}

class _HomeSearchBarState extends State<HomeSearchBar> {
  TextEditingController? search;

  @override
  void initState() {
    search = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    search!.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double _height = MediaQuery.of(context).size.height;
    return Container(
      height: _height * 0.08,
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
      ),
      child: SearchFelid(search: search),
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

class HomeOptionsBar extends StatelessWidget {
  const HomeOptionsBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          HomeOptionButtonItem(
            buttonText: "أسيوي",
            onPressed: () {},
          ),
          HomeOptionButtonItem(
            buttonText: "أوروبي",
            onPressed: () {},
          ),
          HomeOptionButtonItem(
            buttonText: "أمريكى",
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}

class GridCarsView extends StatelessWidget {
  const GridCarsView({
    Key? key,
    this.onCarItemPress,
  }) : super(key: key);

  // just for go to DetailScreen
  final void Function()? onCarItemPress;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, boxConstraints) {
        return SizedBox(
          height: boxConstraints.constrainHeight(650),
          width: 470,
          child: GridView.count(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            crossAxisSpacing: 3,
            mainAxisSpacing: 1.5,
            crossAxisCount: 2,
            children: <Widget>[
              ...gridCars
                  .map(
                    (car) => HomeCarGridItem(
                      onCarItemPress: onCarItemPress,
                      carImage: car.carImage,
                      topHeadLineInfo: car.topHeadLine,
                      detailsCarInfo: [
                        HomeDetailsCarItem(
                          iconPath: getCarInfoTypeIconPath(CarDetails.salary),
                          infoType: getCarInfoTypeWord(CarDetails.salary),
                          infoValue: "12700",
                        ),
                        HomeDetailsCarItem(
                          iconPath: getCarInfoTypeIconPath(
                              CarDetails.yearOfManufacture),
                          infoType:
                              getCarInfoTypeWord(CarDetails.yearOfManufacture),
                          infoValue: "2019",
                        ),
                        HomeDetailsCarItem(
                          iconPath:
                              getCarInfoTypeIconPath(CarDetails.kilometer),
                          infoType: getCarInfoTypeWord(CarDetails.kilometer),
                          infoValue: "20000",
                        ),
                        HomeDetailsCarItem(
                          // iconPath: "",
                          iconPath:
                              getCarInfoTypeIconPath(CarDetails.guaranteedTo),
                          infoType: getCarInfoTypeWord(CarDetails.guaranteedTo),
                          infoValue: "2021",
                        ),
                      ],
                    ),
                  )
                  .toList()
            ],
          ),
        );
      },
    );
  }
}

class HomeCarGridItem extends StatelessWidget {
  const HomeCarGridItem({
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
    return GestureDetector(
      onTap: onCarItemPress,
      child: Stack(
        children: [
          SizedBox(
            height: 200,
            width: 350,
            child: Image.asset(
              carImage,
              fit: BoxFit.fitWidth,
            ),
          ),
          Positioned(
            top: 0,
            left: 0,
            right: 0,
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
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
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

class HomeDetailsCarItem extends StatelessWidget {
  final String iconPath;
  final String infoType;
  final String infoValue;
  const HomeDetailsCarItem({
    Key? key,
    required this.iconPath,
    required this.infoType,
    required this.infoValue,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    return Container(
      width: _width * 0.120,
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Expanded(
            child: SvgPicture.asset(
              iconPath,
              height: 10,
              width: 10,
            ),
          ),
          Expanded(
            child: Center(
              child: Text(
                infoType,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 13,
                  fontWeight: FontWeight.w200,
                ),
                textDirection: TextDirection.rtl,
              ),
            ),
          ),
          Expanded(
            child: Text(
              infoValue,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 10,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
