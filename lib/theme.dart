import 'package:flutter/material.dart';

final ThemeData medLinkDark = ThemeData(
  brightness: Brightness.dark,
  primaryColor: const Color(0xff212121),
  primaryColorLight: const Color(0xff9e9e9e),
  primaryColorDark: const Color(0xff000000),
  canvasColor: const Color(0xff303030),
  scaffoldBackgroundColor: const Color(0xff303030),
  cardColor: const Color(0xff424242),
  dividerColor: const Color(0x1fffffff),
  highlightColor: const Color(0x40cccccc),
  splashColor: const Color(0x40cccccc),
  unselectedWidgetColor: const Color(0xb3ffffff),
  disabledColor: const Color(0x62ffffff),
  secondaryHeaderColor: const Color(0xff616161),
  dialogBackgroundColor: const Color(0xff424242),
  indicatorColor: const Color(0xff64ffda),
  hintColor: const Color(0x80ffffff),
  buttonTheme: const ButtonThemeData(
    textTheme: ButtonTextTheme.normal,
    minWidth: 88,
    height: 36,
    padding: EdgeInsets.only(top: 0, bottom: 0, left: 16, right: 16),
    shape: RoundedRectangleBorder(
      side: BorderSide(
        color: Color(0xff000000),
        width: 0,
        style: BorderStyle.none,
      ),
      borderRadius: BorderRadius.all(Radius.circular(2.0)),
    ),
    alignedDropdown: false,
    buttonColor: Color(0xff2423a9),
    disabledColor: Color(0x61ffffff),
    highlightColor: Color(0x29ffffff),
    splashColor: Color(0x1fffffff),
    focusColor: Color(0x1fffffff),
    hoverColor: Color(0x0affffff),
    colorScheme: ColorScheme(
      primary: Color(0xff5857dc),
      secondary: Color(0xff64ffda),
      surface: Color(0xff424242),
      background: Color(0xff616161),
      error: Color(0xffd32f2f),
      onPrimary: Color(0xffffffff),
      onSecondary: Color(0xff000000),
      onSurface: Color(0xffffffff),
      onBackground: Color(0xffffffff),
      onError: Color(0xff000000),
      brightness: Brightness.dark,
    ),
  ),
  textTheme: const TextTheme(
    displayLarge: TextStyle(
      color: Color(0xb3ffffff),
      fontSize: null,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    displayMedium: TextStyle(
      color: Color(0xb3ffffff),
      fontSize: null,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    displaySmall: TextStyle(
      color: Color(0xb3ffffff),
      fontSize: null,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    headlineMedium: TextStyle(
      color: Color(0xb3ffffff),
      fontSize: null,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    headlineSmall: TextStyle(
      color: Color(0xffffffff),
      fontSize: null,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    titleLarge: TextStyle(
      color: Color(0xffffffff),
      fontSize: null,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    titleMedium: TextStyle(
      color: Color(0xffffffff),
      fontSize: null,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    bodyLarge: TextStyle(
      color: Color(0xffffffff),
      fontSize: null,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    bodyMedium: TextStyle(
      color: Color(0xffffffff),
      fontSize: null,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    bodySmall: TextStyle(
      color: Color(0xb3ffffff),
      fontSize: null,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    labelLarge: TextStyle(
      color: Color(0xffffffff),
      fontSize: null,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    titleSmall: TextStyle(
      color: Color(0xffffffff),
      fontSize: null,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    labelSmall: TextStyle(
      color: Color(0xffffffff),
      fontSize: null,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
  ),
  primaryTextTheme: const TextTheme(
    displayLarge: TextStyle(
      color: Color(0xb3ffffff),
      fontSize: null,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    displayMedium: TextStyle(
      color: Color(0xb3ffffff),
      fontSize: null,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    displaySmall: TextStyle(
      color: Color(0xb3ffffff),
      fontSize: null,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    headlineMedium: TextStyle(
      color: Color(0xb3ffffff),
      fontSize: null,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    headlineSmall: TextStyle(
      color: Color(0xffffffff),
      fontSize: null,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    titleLarge: TextStyle(
      color: Color(0xffffffff),
      fontSize: null,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    titleMedium: TextStyle(
      color: Color(0xffffffff),
      fontSize: null,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    bodyLarge: TextStyle(
      color: Color(0xffffffff),
      fontSize: null,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    bodyMedium: TextStyle(
      color: Color(0xffffffff),
      fontSize: null,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    bodySmall: TextStyle(
      color: Color(0xb3ffffff),
      fontSize: null,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    labelLarge: TextStyle(
      color: Color(0xffffffff),
      fontSize: null,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    titleSmall: TextStyle(
      color: Color(0xffffffff),
      fontSize: null,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    labelSmall: TextStyle(
      color: Color(0xffffffff),
      fontSize: null,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
  ),
  inputDecorationTheme: const InputDecorationTheme(
    labelStyle: TextStyle(
      color: Color(0xffffffff),
      fontSize: null,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    helperStyle: TextStyle(
      color: Color(0xffffffff),
      fontSize: null,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    hintStyle: TextStyle(
      color: Color(0xffffffff),
      fontSize: null,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    errorStyle: TextStyle(
      color: Color(0xffffffff),
      fontSize: null,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    errorMaxLines: null,
    isDense: false,
    contentPadding: EdgeInsets.only(top: 24, bottom: 16, left: 12, right: 12),
    isCollapsed: false,
    prefixStyle: TextStyle(
      color: Color(0xffffffff),
      fontSize: null,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    suffixStyle: TextStyle(
      color: Color(0xffffffff),
      fontSize: null,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    counterStyle: TextStyle(
      color: Color(0xffffffff),
      fontSize: null,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    filled: false,
    fillColor: Color(0x00000000),
    floatingLabelBehavior: FloatingLabelBehavior.auto,
    errorBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: Color(0xff000000),
          width: 1,
          style: BorderStyle.solid,
        ),
        borderRadius: BorderRadius.all(Radius.circular(4.0)),
        gapPadding: 4),
    focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: Color(0xff000000),
          width: 1,
          style: BorderStyle.solid,
        ),
        borderRadius: BorderRadius.all(Radius.circular(4.0)),
        gapPadding: 4),
    focusedErrorBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: Color(0xff000000),
          width: 1,
          style: BorderStyle.solid,
        ),
        borderRadius: BorderRadius.all(Radius.circular(4.0)),
        gapPadding: 4),
    disabledBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: Color(0xff000000),
          width: 1,
          style: BorderStyle.solid,
        ),
        borderRadius: BorderRadius.all(Radius.circular(4.0)),
        gapPadding: 4),
    enabledBorder: InputBorder.none,
    border: OutlineInputBorder(
        borderSide: BorderSide(
          color: Color(0xff000000),
          width: 1,
          style: BorderStyle.solid,
        ),
        borderRadius: BorderRadius.all(Radius.circular(4.0)),
        gapPadding: 4),
  ),
  iconTheme: const IconThemeData(
    color: Color(0xffffffff),
    opacity: 1,
    size: 24,
  ),
  primaryIconTheme: const IconThemeData(
    color: Color(0xffffffff),
    opacity: 1,
    size: 24,
  ),
  sliderTheme: const SliderThemeData(
    activeTrackColor: null,
    inactiveTrackColor: null,
    disabledActiveTrackColor: null,
    disabledInactiveTrackColor: null,
    activeTickMarkColor: null,
    inactiveTickMarkColor: null,
    disabledActiveTickMarkColor: null,
    disabledInactiveTickMarkColor: null,
    thumbColor: null,
    disabledThumbColor: null,
    overlayColor: null,
    valueIndicatorColor: null,
    showValueIndicator: null,
    valueIndicatorTextStyle: TextStyle(
      color: Color(0xdd000000),
      fontSize: null,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
  ),
  tabBarTheme: const TabBarTheme(
    indicatorSize: TabBarIndicatorSize.tab,
    labelColor: Color(0xffffffff),
    unselectedLabelColor: Color(0xb2ffffff),
  ),
  chipTheme: const ChipThemeData(
    backgroundColor: Color(0x1fffffff),
    brightness: Brightness.dark,
    deleteIconColor: Color(0xdeffffff),
    disabledColor: Color(0x0cffffff),
    labelPadding: EdgeInsets.only(top: 0, bottom: 0, left: 8, right: 8),
    labelStyle: TextStyle(
      color: Color(0xdeffffff),
      fontSize: null,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    padding: EdgeInsets.only(top: 4, bottom: 4, left: 4, right: 4),
    secondaryLabelStyle: TextStyle(
      color: Color(0x3dffffff),
      fontSize: null,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    secondarySelectedColor: Color(0x3d212121),
    selectedColor: Color(0x3dffffff),
    shape: StadiumBorder(
        side: BorderSide(
      color: Color(0xff000000),
      width: 0,
      style: BorderStyle.none,
    )),
  ),
  dialogTheme: const DialogTheme(
      shape: RoundedRectangleBorder(
    side: BorderSide(
      color: Color(0xff000000),
      width: 0,
      style: BorderStyle.none,
    ),
    borderRadius: BorderRadius.all(Radius.circular(0.0)),
  )),
  textSelectionTheme: const TextSelectionThemeData(
    cursorColor: Color(0xff4285f4),
    selectionColor: Color(0xff64ffda),
    selectionHandleColor: Color(0xff1de9b6),
  ),
  checkboxTheme: CheckboxThemeData(
    fillColor:
        MaterialStateProperty.resolveWith<Color?>((Set<MaterialState> states) {
      if (states.contains(MaterialState.disabled)) {
        return null;
      }
      if (states.contains(MaterialState.selected)) {
        return const Color(0xff64ffda);
      }
      return null;
    }),
  ),
  radioTheme: RadioThemeData(
    fillColor:
        MaterialStateProperty.resolveWith<Color?>((Set<MaterialState> states) {
      if (states.contains(MaterialState.disabled)) {
        return null;
      }
      if (states.contains(MaterialState.selected)) {
        return const Color(0xff64ffda);
      }
      return null;
    }),
  ),
  switchTheme: SwitchThemeData(
    thumbColor:
        MaterialStateProperty.resolveWith<Color?>((Set<MaterialState> states) {
      if (states.contains(MaterialState.disabled)) {
        return null;
      }
      if (states.contains(MaterialState.selected)) {
        return const Color(0xff64ffda);
      }
      return null;
    }),
  ),
);

final ThemeData medLinkLight = ThemeData(
  brightness: Brightness.light,
  primaryColor: const Color(0xff5857dc),
  primaryColorLight: const Color(0xffd5d5f6),
  primaryColorDark: const Color(0xff1b1a7f),
  canvasColor: const Color(0xfffafafa),
  scaffoldBackgroundColor: const Color(0xfffafafa),
  cardColor: const Color(0xffffffff),
  dividerColor: const Color(0x1f000000),
  highlightColor: const Color(0x66bcbcbc),
  splashColor: const Color(0x66c8c8c8),
  unselectedWidgetColor: const Color(0x8a000000),
  disabledColor: const Color(0x61000000),
  secondaryHeaderColor: const Color(0xffeaeafb),
  dialogBackgroundColor: const Color(0xffffffff),
  indicatorColor: const Color(0xff2d2cd3),
  hintColor: const Color(0x8a000000),
  buttonTheme: const ButtonThemeData(
    textTheme: ButtonTextTheme.normal,
    minWidth: 88,
    height: 36,
    padding: EdgeInsets.only(top: 0, bottom: 0, left: 16, right: 16),
    shape: RoundedRectangleBorder(
      side: BorderSide(
        color: Color(0xff000000),
        width: 0,
        style: BorderStyle.none,
      ),
      borderRadius: BorderRadius.all(Radius.circular(2.0)),
    ),
    alignedDropdown: false,
    buttonColor: Color(0xffe0e0e0),
    disabledColor: Color(0x61000000),
    highlightColor: Color(0x29000000),
    splashColor: Color(0x1f000000),
    focusColor: Color(0x1f000000),
    hoverColor: Color(0x0a000000),
    colorScheme: ColorScheme(
      primary: Color(0xff5857dc),
      secondary: Color(0xff2d2cd3),
      surface: Color(0xffffffff),
      background: Color(0xffababed),
      error: Color(0xffd32f2f),
      onPrimary: Color(0xffffffff),
      onSecondary: Color(0xffffffff),
      onSurface: Color(0xff000000),
      onBackground: Color(0xffffffff),
      onError: Color(0xffffffff),
      brightness: Brightness.light,
    ),
  ),
  textTheme: const TextTheme(
    displayLarge: TextStyle(
      color: Color(0x8a000000),
      fontSize: null,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    displayMedium: TextStyle(
      color: Color(0x8a000000),
      fontSize: null,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    displaySmall: TextStyle(
      color: Color(0x8a000000),
      fontSize: null,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    headlineMedium: TextStyle(
      color: Color(0x8a000000),
      fontSize: null,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    headlineSmall: TextStyle(
      color: Color(0xdd000000),
      fontSize: null,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    titleLarge: TextStyle(
      color: Color(0xdd000000),
      fontSize: null,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    titleMedium: TextStyle(
      color: Color(0xdd000000),
      fontSize: null,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    bodyLarge: TextStyle(
      color: Color(0xdd000000),
      fontSize: null,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    bodyMedium: TextStyle(
      color: Color(0xdd000000),
      fontSize: null,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    bodySmall: TextStyle(
      color: Color(0x8a000000),
      fontSize: null,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    labelLarge: TextStyle(
      color: Color(0xdd000000),
      fontSize: null,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    titleSmall: TextStyle(
      color: Color(0xff000000),
      fontSize: null,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    labelSmall: TextStyle(
      color: Color(0xff000000),
      fontSize: null,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
  ),
  primaryTextTheme: const TextTheme(
    displayLarge: TextStyle(
      color: Color(0xb3ffffff),
      fontSize: null,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    displayMedium: TextStyle(
      color: Color(0xb3ffffff),
      fontSize: null,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    displaySmall: TextStyle(
      color: Color(0xb3ffffff),
      fontSize: null,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    headlineMedium: TextStyle(
      color: Color(0xb3ffffff),
      fontSize: null,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    headlineSmall: TextStyle(
      color: Color(0xffffffff),
      fontSize: null,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    titleLarge: TextStyle(
      color: Color(0xffffffff),
      fontSize: null,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    titleMedium: TextStyle(
      color: Color(0xffffffff),
      fontSize: null,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    bodyLarge: TextStyle(
      color: Color(0xffffffff),
      fontSize: null,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    bodyMedium: TextStyle(
      color: Color(0xffffffff),
      fontSize: null,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    bodySmall: TextStyle(
      color: Color(0xb3ffffff),
      fontSize: null,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    labelLarge: TextStyle(
      color: Color(0xffffffff),
      fontSize: null,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    titleSmall: TextStyle(
      color: Color(0xffffffff),
      fontSize: null,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    labelSmall: TextStyle(
      color: Color(0xffffffff),
      fontSize: null,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
  ),
  inputDecorationTheme: const InputDecorationTheme(
    labelStyle: TextStyle(
      color: Color(0xdd000000),
      fontSize: null,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    helperStyle: TextStyle(
      color: Color(0xdd000000),
      fontSize: null,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    hintStyle: TextStyle(
      color: Color(0xdd000000),
      fontSize: null,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    errorStyle: TextStyle(
      color: Color(0xdd000000),
      fontSize: null,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    errorMaxLines: null,
    isDense: false,
    contentPadding: EdgeInsets.only(top: 12, bottom: 12, left: 0, right: 0),
    isCollapsed: false,
    prefixStyle: TextStyle(
      color: Color(0xdd000000),
      fontSize: null,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    suffixStyle: TextStyle(
      color: Color(0xdd000000),
      fontSize: null,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    counterStyle: TextStyle(
      color: Color(0xdd000000),
      fontSize: null,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    filled: false,
    fillColor: Color(0x00000000),
    floatingLabelBehavior: FloatingLabelBehavior.auto,
    errorBorder: UnderlineInputBorder(
      borderSide: BorderSide(
        color: Color(0xff000000),
        width: 1,
        style: BorderStyle.solid,
      ),
      borderRadius: BorderRadius.all(Radius.circular(4.0)),
    ),
    focusedBorder: UnderlineInputBorder(
      borderSide: BorderSide(
        color: Color(0xff000000),
        width: 1,
        style: BorderStyle.solid,
      ),
      borderRadius: BorderRadius.all(Radius.circular(4.0)),
    ),
    focusedErrorBorder: UnderlineInputBorder(
      borderSide: BorderSide(
        color: Color(0xff000000),
        width: 1,
        style: BorderStyle.solid,
      ),
      borderRadius: BorderRadius.all(Radius.circular(4.0)),
    ),
    disabledBorder: UnderlineInputBorder(
      borderSide: BorderSide(
        color: Color(0xff000000),
        width: 1,
        style: BorderStyle.solid,
      ),
      borderRadius: BorderRadius.all(Radius.circular(4.0)),
    ),
    enabledBorder: UnderlineInputBorder(
      borderSide: BorderSide(
        color: Color(0xff000000),
        width: 1,
        style: BorderStyle.solid,
      ),
      borderRadius: BorderRadius.all(Radius.circular(4.0)),
    ),
    border: UnderlineInputBorder(
      borderSide: BorderSide(
        color: Color(0xff000000),
        width: 1,
        style: BorderStyle.solid,
      ),
      borderRadius: BorderRadius.all(Radius.circular(4.0)),
    ),
  ),
  iconTheme: const IconThemeData(
    color: Color(0xdd000000),
    opacity: 1,
    size: 24,
  ),
  primaryIconTheme: const IconThemeData(
    color: Color(0xffffffff),
    opacity: 1,
    size: 24,
  ),
  sliderTheme: const SliderThemeData(
    activeTrackColor: null,
    inactiveTrackColor: null,
    disabledActiveTrackColor: null,
    disabledInactiveTrackColor: null,
    activeTickMarkColor: null,
    inactiveTickMarkColor: null,
    disabledActiveTickMarkColor: null,
    disabledInactiveTickMarkColor: null,
    thumbColor: null,
    disabledThumbColor: null,
    overlayColor: null,
    valueIndicatorColor: null,
    showValueIndicator: null,
    valueIndicatorTextStyle: TextStyle(
      color: Color(0xffffffff),
      fontSize: null,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
  ),
  tabBarTheme: const TabBarTheme(
    indicatorSize: TabBarIndicatorSize.tab,
    labelColor: Color(0xffffffff),
    unselectedLabelColor: Color(0xb2ffffff),
  ),
  chipTheme: const ChipThemeData(
    backgroundColor: Color(0x1f000000),
    brightness: Brightness.light,
    deleteIconColor: Color(0xde000000),
    disabledColor: Color(0x0c000000),
    labelPadding: EdgeInsets.only(top: 0, bottom: 0, left: 8, right: 8),
    labelStyle: TextStyle(
      color: Color(0xde000000),
      fontSize: null,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    padding: EdgeInsets.only(top: 4, bottom: 4, left: 4, right: 4),
    secondaryLabelStyle: TextStyle(
      color: Color(0x3d000000),
      fontSize: null,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    secondarySelectedColor: Color(0x3d5857dc),
    selectedColor: Color(0x3d000000),
    shape: StadiumBorder(
        side: BorderSide(
      color: Color(0xff000000),
      width: 0,
      style: BorderStyle.none,
    )),
  ),
  dialogTheme: const DialogTheme(
      shape: RoundedRectangleBorder(
    side: BorderSide(
      color: Color(0xff000000),
      width: 0,
      style: BorderStyle.none,
    ),
    borderRadius: BorderRadius.all(Radius.circular(0.0)),
  )),
  textSelectionTheme: const TextSelectionThemeData(
    cursorColor: Color(0xff4285f4),
    selectionColor: Color(0xffababed),
    selectionHandleColor: Color(0xff8180e5),
  ),
  checkboxTheme: CheckboxThemeData(
    fillColor:
        MaterialStateProperty.resolveWith<Color?>((Set<MaterialState> states) {
      if (states.contains(MaterialState.disabled)) {
        return null;
      }
      if (states.contains(MaterialState.selected)) {
        return const Color(0xff2423a9);
      }
      return null;
    }),
  ),
  radioTheme: RadioThemeData(
    fillColor:
        MaterialStateProperty.resolveWith<Color?>((Set<MaterialState> states) {
      if (states.contains(MaterialState.disabled)) {
        return null;
      }
      if (states.contains(MaterialState.selected)) {
        return const Color(0xff2423a9);
      }
      return null;
    }),
  ),
  switchTheme: SwitchThemeData(
    thumbColor:
        MaterialStateProperty.resolveWith<Color?>((Set<MaterialState> states) {
      if (states.contains(MaterialState.disabled)) {
        return null;
      }
      if (states.contains(MaterialState.selected)) {
        return const Color(0xff2423a9);
      }
      return null;
    }),
    trackColor:
        MaterialStateProperty.resolveWith<Color?>((Set<MaterialState> states) {
      if (states.contains(MaterialState.disabled)) {
        return null;
      }
      if (states.contains(MaterialState.selected)) {
        return const Color(0xff2423a9);
      }
      return null;
    }),
  ),
  bottomAppBarTheme: const BottomAppBarTheme(color: Color(0xffffffff)),
  colorScheme: ColorScheme.fromSwatch(
          primarySwatch: const MaterialColor(4283979740, {
    50: Color(0xffeaeafb),
    100: Color(0xffd5d5f6),
    200: Color(0xffababed),
    300: Color(0xff8180e5),
    400: Color(0xff5756dc),
    500: Color(0xff2d2cd3),
    600: Color(0xff2423a9),
    700: Color(0xff1b1a7f),
    800: Color(0xff121254),
    900: Color(0xff09092a)
  }))
      .copyWith(secondary: const Color(0xff2d2cd3))
      .copyWith(background: const Color(0xffababed))
      .copyWith(error: const Color(0xffd32f2f)),
);
