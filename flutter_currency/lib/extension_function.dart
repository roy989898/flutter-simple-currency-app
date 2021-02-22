import 'package:flutter/material.dart';

ImageFlag(String country) {
  var usedName = getTheCorrectFlagName(country);
  return Image.asset('icons/flags/png/$usedName.png', package: 'country_icons');
}

ImageFlag25X(String country) {
  var usedName = getTheCorrectFlagName(country);
  return Image.asset('icons/flags/png/2.5x/$usedName.png',
      package: 'country_icons');
}

getTheCorrectFlagName(String country) {
  try {
    var usedName = country.toLowerCase()[0] + country.toLowerCase()[1];
    return usedName;
  } catch (e) {
    return '';
  }
}
