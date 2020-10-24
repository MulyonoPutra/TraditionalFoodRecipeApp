part of 'shared.dart';

const double defaultMargin = 24;

Color mainColor = "FFC700".toColor();
Color greyColor = "8D92A3".toColor();

TextStyle greyFontStyle = GoogleFonts.firaCode().copyWith(color: greyColor);
TextStyle blackFontStyle1 = GoogleFonts.firaCode()
    .copyWith(color: Colors.black, fontSize: 22, fontWeight: FontWeight.w500);
TextStyle blackFontStyle2 = GoogleFonts.firaCode()
    .copyWith(color: Colors.black, fontSize: 16, fontWeight: FontWeight.w500);
TextStyle blackFontStyle3 = GoogleFonts.firaCode().copyWith(color: Colors.black);

Widget loadingIndicator = SpinKitFadingCircle(
  size: 45,
  color: mainColor,
);
