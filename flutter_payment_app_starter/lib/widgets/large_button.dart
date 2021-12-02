import 'package:flutter/material.dart';
import 'package:flutter_payment_app/component/colors.dart';

class AppButton extends StatelessWidget {
  final Color? backgroundColor ;
  final Color? textColor;
  final String text;
  final Function()? onTap;
  final bool? isBorder;

  const AppButton({Key? key,
    this.backgroundColor: AppColor.mainColor,
    this.textColor,
    required this.text,
    this.onTap,
    this.isBorder : false

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.only(left: 0),
        height: 60,
        width: MediaQuery.of(context).size.width-60,
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            width: 2,
            color: AppColor.mainColor, 
          ),
           

        ),
        child: Center(
          child: Text(
            text,style: TextStyle( 
              color:textColor,
              fontSize: 40,
              fontWeight: FontWeight.bold 
            ),
            
          ),
        ),
      ),

    );
  }
}
