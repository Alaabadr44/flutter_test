// ignore_for_file: file_names

import '/constance/icons.dart';
import '/constance/images.dart';

class HomeCarGridItem {
  final String topHeadLine;
  final String carImage;
  List<CarInfo> details;
  HomeCarGridItem({
    required this.topHeadLine,
    required this.carImage,
    required this.details,
  });
}

class CarInfo {
  final String iconPath;
  final String infoValue;
  final String infoType;
  CarInfo({
    required this.iconPath,
    required this.infoValue,
    required this.infoType,
  });
}

enum CarDetails {
  salary,
  yearOfManufacture,
  kilometer,
  guaranteedTo,
}

String getCarInfoTypeWord(CarDetails detail) {
  if (detail == CarDetails.salary) {
    return "السعر";
  } else if (detail == CarDetails.yearOfManufacture) {
    return "سنةالصنع";
  } else if (detail == CarDetails.kilometer) {
    return "كم";
  } else if (detail == CarDetails.guaranteedTo) {
    return "مكفولةل ";
  } else {
    return "";
  }
}

String getCarInfoTypeIconPath(CarDetails detail) {
  if (detail == CarDetails.salary) {
    return iconHomeAd1;
  } else if (detail == CarDetails.yearOfManufacture) {
    return iconHomeAd2;
  } else if (detail == CarDetails.kilometer) {
    return iconHomeAd3;
  } else if (detail == CarDetails.guaranteedTo) {
    return iconHomeAd4;
  } else {
    return "";
  }
}

List<HomeCarGridItem> gridCars = [
  HomeCarGridItem(
    carImage: image1,
    topHeadLine: "جي أم سي | يوكن | الفئة الرابعة ",
    details: [
      CarInfo(
        iconPath: getCarInfoTypeIconPath(CarDetails.salary),
        infoValue: "12700",
        infoType: getCarInfoTypeWord(CarDetails.salary),
      ),
      CarInfo(
        iconPath: getCarInfoTypeIconPath(CarDetails.yearOfManufacture),
        infoValue: "2019",
        infoType: getCarInfoTypeWord(CarDetails.yearOfManufacture),
      ),
      CarInfo(
        iconPath: getCarInfoTypeIconPath(CarDetails.kilometer),
        infoValue: "20000",
        infoType: getCarInfoTypeWord(CarDetails.kilometer),
      ),
      CarInfo(
        iconPath: getCarInfoTypeIconPath(CarDetails.guaranteedTo),
        infoValue: "2021",
        infoType: getCarInfoTypeWord(CarDetails.guaranteedTo),
      ),
    ],
  ),
  HomeCarGridItem(
    carImage: image5,
    topHeadLine: "جي أم سي | يوكن | الفئة الرابعة ",
    details: [
      CarInfo(
        iconPath: getCarInfoTypeIconPath(CarDetails.salary),
        infoValue: "12700",
        infoType: getCarInfoTypeWord(CarDetails.salary),
      ),
      CarInfo(
        iconPath: getCarInfoTypeIconPath(CarDetails.yearOfManufacture),
        infoValue: "2019",
        infoType: getCarInfoTypeWord(CarDetails.yearOfManufacture),
      ),
      CarInfo(
        iconPath: getCarInfoTypeIconPath(CarDetails.kilometer),
        infoValue: "20000",
        infoType: getCarInfoTypeWord(CarDetails.kilometer),
      ),
      CarInfo(
        iconPath: getCarInfoTypeIconPath(CarDetails.guaranteedTo),
        infoValue: "2021",
        infoType: getCarInfoTypeWord(CarDetails.guaranteedTo),
      ),
    ],
  ),
  HomeCarGridItem(
    carImage: image3,
    topHeadLine: "جي أم سي | يوكن | الفئة الرابعة ",
    details: [
      CarInfo(
        iconPath: getCarInfoTypeIconPath(CarDetails.salary),
        infoValue: "12700",
        infoType: getCarInfoTypeWord(CarDetails.salary),
      ),
      CarInfo(
        iconPath: getCarInfoTypeIconPath(CarDetails.yearOfManufacture),
        infoValue: "2019",
        infoType: getCarInfoTypeWord(CarDetails.yearOfManufacture),
      ),
      CarInfo(
        iconPath: getCarInfoTypeIconPath(CarDetails.kilometer),
        infoValue: "20000",
        infoType: getCarInfoTypeWord(CarDetails.kilometer),
      ),
      CarInfo(
        iconPath: getCarInfoTypeIconPath(CarDetails.guaranteedTo),
        infoValue: "2021",
        infoType: getCarInfoTypeWord(CarDetails.guaranteedTo),
      ),
    ],
  ),
  HomeCarGridItem(
    carImage: image5,
    topHeadLine: "جي أم سي | يوكن | الفئة الرابعة ",
    details: [
      CarInfo(
        iconPath: getCarInfoTypeIconPath(CarDetails.salary),
        infoValue: "12700",
        infoType: getCarInfoTypeWord(CarDetails.salary),
      ),
      CarInfo(
        iconPath: getCarInfoTypeIconPath(CarDetails.yearOfManufacture),
        infoValue: "2019",
        infoType: getCarInfoTypeWord(CarDetails.yearOfManufacture),
      ),
      CarInfo(
        iconPath: getCarInfoTypeIconPath(CarDetails.kilometer),
        infoValue: "20000",
        infoType: getCarInfoTypeWord(CarDetails.kilometer),
      ),
      CarInfo(
        iconPath: getCarInfoTypeIconPath(CarDetails.guaranteedTo),
        infoValue: "2021",
        infoType: getCarInfoTypeWord(CarDetails.guaranteedTo),
      ),
    ],
  ),
  HomeCarGridItem(
    carImage: image3,
    topHeadLine: "جي أم سي | يوكن | الفئة الرابعة ",
    details: [
      CarInfo(
        iconPath: getCarInfoTypeIconPath(CarDetails.salary),
        infoValue: "12700",
        infoType: getCarInfoTypeWord(CarDetails.salary),
      ),
      CarInfo(
        iconPath: getCarInfoTypeIconPath(CarDetails.yearOfManufacture),
        infoValue: "2019",
        infoType: getCarInfoTypeWord(CarDetails.yearOfManufacture),
      ),
      CarInfo(
        iconPath: getCarInfoTypeIconPath(CarDetails.kilometer),
        infoValue: "20000",
        infoType: getCarInfoTypeWord(CarDetails.kilometer),
      ),
      CarInfo(
        iconPath: getCarInfoTypeIconPath(CarDetails.guaranteedTo),
        infoValue: "2021",
        infoType: getCarInfoTypeWord(CarDetails.guaranteedTo),
      ),
    ],
  ),
  HomeCarGridItem(
    carImage: image5,
    topHeadLine: "جي أم سي | يوكن | الفئة الرابعة ",
    details: [
      CarInfo(
        iconPath: getCarInfoTypeIconPath(CarDetails.salary),
        infoValue: "12700",
        infoType: getCarInfoTypeWord(CarDetails.salary),
      ),
      CarInfo(
        iconPath: getCarInfoTypeIconPath(CarDetails.yearOfManufacture),
        infoValue: "2019",
        infoType: getCarInfoTypeWord(CarDetails.yearOfManufacture),
      ),
      CarInfo(
        iconPath: getCarInfoTypeIconPath(CarDetails.kilometer),
        infoValue: "20000",
        infoType: getCarInfoTypeWord(CarDetails.kilometer),
      ),
      CarInfo(
        iconPath: getCarInfoTypeIconPath(CarDetails.guaranteedTo),
        infoValue: "2021",
        infoType: getCarInfoTypeWord(CarDetails.guaranteedTo),
      ),
    ],
  ),
];
