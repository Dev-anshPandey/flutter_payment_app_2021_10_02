import 'package:flutter/material.dart';
import 'package:flutter_payment_app/component/colors.dart';

class Button extends StatelessWidget {
  final double? fontSize;
  final IconData? icon;
  final Function()? onTap;
  final Color? bgcolor;
  final Color? icolor;
  final Color? tcolor;
  final String ?text;
  const Button(
      {Key? key,
      this.fontSize: 20,
      this.icon,
      this.onTap,
      this.bgcolor: AppColor.mainColor,
      this.icolor: Colors.white,
      this.tcolor: AppColor.mainColor,
      this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: onTap,
        child: Column(
          children: [
            Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                color: bgcolor,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Icon(
                icon,
                size: 30,
                color: icolor,
              ),
            ),
            text != null
                ? Text(text!,
                    style: TextStyle(
                      fontSize: 14,
                      color: tcolor,
                    ))
                : Container()
          ],
        ));
  }
}
