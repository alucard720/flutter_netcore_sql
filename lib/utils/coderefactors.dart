import 'package:flutter_netcore_sql/utils/exports.dart';

Widget customtext({required String txt, required TextStyle style}) {
  return Text(
    txt,
    style: style,
  );
}

//inkwell buttons pic

Widget inkwellbuttons({required Image image}) {
  return Expanded(
    child: Container(
      width: 170,
      height: 60,
      child: image,
    ),
  );
}

//sign up button

Widget signupcontainer({required String st}) {
  return Container(
    width: double.infinity,
    height: 60,
    decoration: BoxDecoration(
      color: AppColors.kwhiteColor,
      borderRadius: BorderRadius.circular(12),
    ),
    child: Center(
      child: customtext(
          txt: st,
          style: const TextStyle(
              color: AppColors.kwhiteColor,
              fontWeight: FontWeight.normal,
              fontSize: 14)),
    ),
  );
}
