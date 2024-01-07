import 'package:flutter/material.dart';

/// width

const width10 = SizedBox(
  width: 10,
);
const width20 = SizedBox(
  width: 20,
);
const width30 = SizedBox(
  width: 30,
);

/// height
const hight10 = SizedBox(
  height: 10,
);
const hight20 = SizedBox(
  height: 20,
);
const hight30 = SizedBox(
  height: 30,
);

//// Radius
final BorderRadius borderRadious5 = BorderRadius.circular(5);
final BorderRadius borderRadious10 = BorderRadius.circular(10);

///images

const mainImageURL =
    'https://images.pexels.com/photos/19397660/pexels-photo-19397660/free-photo-of-reflection-of-a-brunette-woman-in-a-mirror.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1';

// textstyle

const TextStyle khometilestyle =
    TextStyle(fontSize: 16, fontWeight: FontWeight.bold);

TextStyle boldtext(
  double size,
) {
  return TextStyle(
    fontSize: size,
    fontWeight: FontWeight.bold,
  );
}

TextStyle normaltext(
  double size,
) {
  return TextStyle(
    fontSize: size,
  );
}

TextStyle colortext(double size, Color color) {
  return TextStyle(fontSize: size, color: color);
}
