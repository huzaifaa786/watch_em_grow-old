import 'package:flutter/material.dart';
import 'package:watch_em_grow/values/colors.dart';

class Styles {
  Styles._();

  // Themes

  static final ColorScheme _colorSchemelight = const ColorScheme.light().copyWith(
    primary: primaryColor,
  );

  static final ColorScheme _colorSchemedark = const ColorScheme.dark().copyWith(
    primary: primaryColor,
  );

  static final ThemeData lightTheme = ThemeData(
    colorScheme: _colorSchemelight,
    fontFamily: "PlusJakartaSans",
  );

  static final ThemeData darkTheme = ThemeData(
    colorScheme: _colorSchemedark,
    fontFamily: "PlusJakartaSans",
  );
}
























// // ignore_for_file: prefer_const_constructors, deprecated_member_use, use_full_hex_values_for_flutter_colors

// import 'dart:ui';

// import 'package:flutter/material.dart';
// import 'package:petsid/values/colors.dart';


// class Styles {
//   static ThemeData themeData(bool isDarkTheme, BuildContext context) {
//     return ThemeData(
//       primarySwatch: Colors.red,
//       primaryColor: isDarkTheme ? WHITE : Colors.white,
//       textTheme: Theme.of(context).textTheme.apply(
//         fontFamily :'Montserrat',
//   bodyColor: isDarkTheme ? WHITE : BLACK,
//   displayColor: isDarkTheme ? WHITE : BLACK,
// ),
//       iconTheme: IconThemeData(color: isDarkTheme ? WHITE : BLACK.withOpacity(0.6)),
//       backgroundColor: isDarkTheme ? Color(4280229663) : Color(0xffF1F5FB),
//       indicatorColor: isDarkTheme ? Color(0xff0E1D36) : Color(0xffCBDCF8),
//       buttonColor: isDarkTheme ? Color(0xff3B3B3B) : Color(0xffF1F5FB),
//       hintColor: isDarkTheme ? Color(0xff280C0B) : GREY,
//       highlightColor: isDarkTheme ? Color(0xff372901) : Color(0xffFCE192),
//       hoverColor: isDarkTheme ? Color(0xff3A3A3B) : Color(0xff4285F4),
//       focusColor: isDarkTheme ? Color(0xff0B2512) : Color(0xffA8DAB5),
//       disabledColor: Colors.grey,
//       textSelectionColor: isDarkTheme ? Colors.white : Colors.black,
//       cardColor: isDarkTheme ? Color(0xFF151515) : Colors.white,
//       canvasColor: isDarkTheme ? Color(4280229663): Colors.grey[50],
//       brightness: isDarkTheme ? Brightness.dark : Brightness.light,
//        checkboxTheme: CheckboxThemeData(
//          fillColor: MaterialStateProperty.all<Color>(isDarkTheme ? BLACK.withOpacity(0.6):GREEN),
//          overlayColor: MaterialStateProperty.all<Color>(isDarkTheme ? BLACK: GREEN),
//       shape: RoundedRectangleBorder(
//         borderRadius: BorderRadius.circular(25),
//       ),
//     ),
//       buttonTheme:
//           Theme.of(context).buttonTheme.copyWith(colorScheme: isDarkTheme ? ColorScheme.dark() : ColorScheme.light()),
//       appBarTheme: AppBarTheme(
//         elevation: 0.0,
//       ),
//     );
//   }
// }
