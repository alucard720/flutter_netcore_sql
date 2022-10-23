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
      color: AppColors.kBlueColor,
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

//rich text

TextSpan RichTextSpan({required String one, required String two}) {
  return TextSpan(children: [
    TextSpan(
        text: one,
        style: const TextStyle(fontSize: 13, color: AppColors.kBlackColor)),
    TextSpan(
        text: two,
        style: const TextStyle(fontSize: 13, color: AppColors.kBlueColor))
  ]);
}

//TextField

Widget customtextfield({required String lone, required String htwo}) {
  return TextField(
    decoration: InputDecoration(
        labelText: lone,
        hintText: htwo,
        hintStyle: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 17,
        ),
        border: const OutlineInputBorder(
            borderSide: BorderSide(
          width: 5,
          color: AppColors.kDarkblack,
          style: BorderStyle.solid,
        ))),
    autofocus: true,
    keyboardType: TextInputType.multiline,
  );
}
