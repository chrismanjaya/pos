import 'package:flutter/material.dart';
import 'package:pos/presentation/core/widget_color.dart';
import 'package:pos/presentation/core/widget_size.dart';

// Text
final TextStyle yTextNormal = TextStyle(
  color: kTextPrimaryColor,
  fontSize: sTextNormal,
  fontFamily: "DMSans",
  fontWeight: FontWeight.normal,
);

final TextStyle yTextNormalLink = yTextNormal.copyWith(
  color: kUIInfoColor,
);

final TextStyle yTextNormalReceipt = yTextNormal.copyWith(
  color: kTextReceiptColor,
);

final TextStyle yTextNormalAccent = yTextNormal.copyWith(
  color: kAccentColor,
);

final TextStyle yTextNormalDark = yTextNormal.copyWith(
  color: kPrimaryColor,
);

final TextStyle yTextDisabled = yTextNormal.copyWith(
  color: kTextSecondColor,
);

final TextStyle yTextBold = yTextNormal.copyWith(
  fontWeight: FontWeight.w700,
);

final TextStyle yTextBoldGrey = yTextBold.copyWith(
  color: kSecondColor,
);

final TextStyle yTextBoldDark = yTextBold.copyWith(
  color: kPrimaryColor,
);

final TextStyle yTextBoldAccent = yTextBold.copyWith(
  color: kAccentColor,
);

final TextStyle yTextTitle = yTextNormal.copyWith(
  fontSize: sTextTitle,
  fontWeight: FontWeight.w700,
);

final TextStyle yTextSubtitle = yTextNormal.copyWith(
  fontSize: sTextSubTitle,
  fontWeight: FontWeight.w700,
);

final TextStyle yTextSubtitleReceipt = yTextSubtitle.copyWith(
  color: kTextReceiptColor,
);

final TextStyle yTextSubtitleAccent = yTextSubtitle.copyWith(
  color: kAccentColor,
);

final TextStyle yTextSubtitleDark = yTextSubtitle.copyWith(
  color: kPrimaryColor,
);

final TextStyle yTextButton = yTextNormal.copyWith(
  color: kPrimaryColor,
  fontWeight: FontWeight.w700,
);

final TextStyle yTextMini = yTextNormal.copyWith(
  fontSize: sTextMini,
);

final TextStyle yTextMiniBoldDark = yTextMini.copyWith(
  color: kPrimaryColor,
  fontWeight: FontWeight.w700,
);

final TextStyle yTextMiniLink = yTextMini.copyWith(
  color: kUIInfoColor,
);

final TextStyle yTextMiniAccent = yTextMini.copyWith(
  color: kAccentColor,
);

final TextStyle yTextReportHeader = yTextNormalAccent.copyWith(
  fontSize: sTextReport,
  fontWeight: FontWeight.w700,
);

final TextStyle yTextReportBody = yTextNormal.copyWith(
  fontSize: sTextReport,
);

final TextStyle yTextHint = yTextNormal.copyWith(
  color: kTextSecondColor,
);

final TextStyle yTextStrikeThrough = yTextNormal.copyWith(
  color: kTextSecondColor,
  decoration: TextDecoration.lineThrough,
);

final TextStyle yTextStrikeThroughReceipt = yTextStrikeThrough.copyWith(
  color: kTextReceiptColor,
);

final TextStyle yTextbox = yTextNormal;

final TextStyle yTextboxHint = yTextbox.copyWith(
  color: kTextSecondColor,
);

final TextStyle yTextDropdown = yTextNormal.copyWith(
  color: kTextSecondColor,
);

// Border
final OutlineInputBorder yBorderNormal = OutlineInputBorder(
  borderRadius: BorderRadius.all(sRadius),
  borderSide: BorderSide(color: Colors.transparent),
);

final OutlineInputBorder yBorderFocus = yBorderNormal.copyWith(
  borderSide: BorderSide(color: kFourColor),
);

final OutlineInputBorder yBorderDisabled = yBorderNormal.copyWith(
  borderSide: BorderSide(color: kPrimaryColor),
);

final OutlineInputBorder yBorderError = yBorderNormal.copyWith(
  borderSide: BorderSide(color: kUIDangerColor),
);

final OutlineInputBorder yBorderSearch = OutlineInputBorder(
  borderSide: BorderSide(
    color: kSecondColor,
  ),
  borderRadius: BorderRadius.circular(sBorderRadius),
);

final BorderRadius borderRadius = BorderRadius.circular(sBorderRadius);

// Button
final ButtonStyle yButtonForm = ButtonStyle(
  elevation: MaterialStateProperty.all(0),
  shape: MaterialStateProperty.all(
    RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(sBorderRadius),
    ),
  ),
  backgroundColor: MaterialStateProperty.resolveWith(
    (states) => (states.contains(MaterialState.disabled))
        ? kAccentColor.withAlpha(90)
        : kAccentColor,
  ),
);

final ButtonStyle yButtonFormClearAll = yButtonForm.copyWith(
  backgroundColor: MaterialStateProperty.resolveWith(
    (states) => (states.contains(MaterialState.disabled))
        ? kAccentColor.withAlpha(90)
        : kAccentColor,
  ),
);

final ButtonStyle yButtonFormAdd = yButtonForm.copyWith(
  backgroundColor: MaterialStateProperty.resolveWith(
    (states) => (states.contains(MaterialState.disabled))
        ? kUISuccessColor.withAlpha(90)
        : kUISuccessColor,
  ),
);

final ButtonStyle yButtonFormUpdate = yButtonForm.copyWith(
  backgroundColor: MaterialStateProperty.resolveWith(
    (states) => (states.contains(MaterialState.disabled))
        ? kUIPrimaryColor.withAlpha(90)
        : kUIPrimaryColor,
  ),
);

final ButtonStyle yButtonFormDelete = yButtonForm.copyWith(
  backgroundColor: MaterialStateProperty.resolveWith(
    (states) => (states.contains(MaterialState.disabled))
        ? kUIDangerColor.withAlpha(90)
        : kUIDangerColor,
  ),
);

final ButtonStyle yButtonFormDark = yButtonForm.copyWith(
  backgroundColor: MaterialStateProperty.resolveWith(
    (states) => (states.contains(MaterialState.disabled))
        ? kPrimaryColor.withAlpha(90)
        : kPrimaryColor,
  ),
);

final ButtonStyle yButtonFormBorder = yButtonFormDark.copyWith(
  shape: MaterialStateProperty.all(
    RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(sBorderRadius),
      side: BorderSide(color: kTextPrimaryColor),
    ),
  ),
);

final ButtonStyle yButtonFormGrey = yButtonForm.copyWith(
  backgroundColor: MaterialStateProperty.resolveWith(
    (states) => (states.contains(MaterialState.disabled))
        ? kSecondColor.withAlpha(90)
        : kSecondColor,
  ),
);

final ButtonStyle yButtonIcon = yButtonForm.copyWith(
  padding: MaterialStateProperty.all(EdgeInsets.zero),
  elevation: MaterialStateProperty.all(0),
);

// Button Square
final ButtonStyle yButtonSquare = ButtonStyle(
  elevation: MaterialStateProperty.all(0),
  backgroundColor: MaterialStateProperty.resolveWith(
    (states) => (states.contains(MaterialState.disabled))
        ? kAccentColor.withAlpha(90)
        : kAccentColor,
  ),
);

final ButtonStyle yButtonSquareSuccess = yButtonSquare.copyWith(
  backgroundColor: MaterialStateProperty.resolveWith(
    (states) => (states.contains(MaterialState.disabled))
        ? kUISuccessColor.withAlpha(90)
        : kUISuccessColor,
  ),
);

// Circle Button
final ButtonStyle yButtonCircle = ButtonStyle(
  shape: MaterialStateProperty.all(
    CircleBorder(),
  ),
  padding: MaterialStateProperty.all(
    EdgeInsets.zero,
  ),
  elevation: MaterialStateProperty.all(0),
  backgroundColor: MaterialStateProperty.resolveWith(
    (states) => (states.contains(MaterialState.disabled))
        ? kPrimaryColor.withAlpha(90)
        : kPrimaryColor,
  ),
);

final ButtonStyle yButtonCircleAccent = yButtonCircle.copyWith(
  backgroundColor: MaterialStateProperty.resolveWith(
    (states) => (states.contains(MaterialState.disabled))
        ? kAccentColor.withAlpha(90)
        : kAccentColor,
  ),
);

final ButtonStyle yButtonCirclePrimary = yButtonCircle.copyWith(
  backgroundColor: MaterialStateProperty.resolveWith(
    (states) => (states.contains(MaterialState.disabled))
        ? kUIPrimaryColor.withAlpha(90)
        : kUIPrimaryColor,
  ),
);

final ButtonStyle yButtonCircleQuantity = yButtonCircle.copyWith(
  shape: MaterialStateProperty.all(
    CircleBorder(
      side: BorderSide(color: kSecondColor),
    ),
  ),
);

final ButtonStyle yButtonCircleIcon = yButtonCircle.copyWith(
  backgroundColor: MaterialStateProperty.all(Colors.transparent),
);
