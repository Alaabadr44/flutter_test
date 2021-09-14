import 'package:flutter/material.dart';

class CarSpecification {
  final Icon carSpecificationIcon;
  final String carSpecificationText;
  final String carSpecificationValue;

  CarSpecification({
    required this.carSpecificationIcon,
    required this.carSpecificationText,
    required this.carSpecificationValue,
  });
}

List<CarSpecification> carSpecifications = [
  CarSpecification(
    carSpecificationIcon: const Icon(Icons.vertical_align_bottom),
    carSpecificationText: "اللون الخارجي ",
    carSpecificationValue: "أبيض",
  ),
  CarSpecification(
    carSpecificationIcon: const Icon(Icons.vertical_align_bottom),
    carSpecificationText: "اللون الداخلي ",
    carSpecificationValue: "بيج",
  ),
  CarSpecification(
    carSpecificationIcon: const Icon(Icons.vertical_align_bottom),
    carSpecificationText: "نوع المقعد ",
    carSpecificationValue: "محمل",
  ),
  CarSpecification(
    carSpecificationIcon: const Icon(Icons.vertical_align_bottom),
    carSpecificationText: "فتحة السقف",
    carSpecificationValue: "1",
  ),
  CarSpecification(
    carSpecificationIcon: const Icon(Icons.vertical_align_bottom),
    carSpecificationText: "كاميرا خلفية ",
    carSpecificationValue: "1",
  ),
  CarSpecification(
    carSpecificationIcon: const Icon(Icons.vertical_align_bottom),
    carSpecificationText: "سينسر",
    carSpecificationValue: "أمامى وخلفي",
  ),
  CarSpecification(
    carSpecificationIcon: const Icon(Icons.vertical_align_bottom),
    carSpecificationText: "سيلندر",
    carSpecificationValue: "6",
  ),
  CarSpecification(
    carSpecificationIcon: const Icon(Icons.vertical_align_bottom),
    carSpecificationText: "ناقل الحركة ",
    carSpecificationValue: "أوتوماتيك",
  ),
 
];
