import 'package:flutter/material.dart';

class SizedText extends StatelessWidget {
  final String text;
  final Color color;
  const SizedText({Key? key, required this.text, required this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size textSize = _textSize();
    return Container(
      margin: EdgeInsets.only(top: 20),
      child: Column(
        children: [
          Text(
            text,
            style: TextStyle(
                fontSize: 16, color: color, fontWeight: FontWeight.w700),
            maxLines: 1,
            softWrap: false,
            overflow: TextOverflow.clip,
          ),
          Row(
            children: [
              for(int i=0;i<textSize.width/5;i++)
                i.isEven?Container(
                 width: 5,
                 height: 2,
                 color: color,
               ):Container(
                 margin: EdgeInsets.only(top: 5),
                 width: 5,
                 height: 2,
                 color: Colors.white,
               )
            ],
          )
        ],
      ),
    );
  }

  Size _textSize() {

    final TextPainter textPainter=  TextPainter(
        text: TextSpan(text: text,style: TextStyle(
                fontSize: 16, color: color, fontWeight: FontWeight.w700),
           ),
           maxLines:1,
           textDirection: TextDirection.ltr
     )..layout(minWidth:0, maxWidth:double.infinity);


    return textPainter.size;
  }
}
