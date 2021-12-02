import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_payment_app/component/colors.dart';
import 'package:flutter_payment_app/widgets/button.dart';
import 'package:flutter_payment_app/widgets/large_button.dart';
import 'package:flutter_payment_app/widgets/text_size.dart';

class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key}) : super(key: key);
  double c = 0;
  double d = 0;

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    c = h;
    double w = MediaQuery.of(context).size.width;
    d = w;
    return Scaffold(
      backgroundColor: AppColor.backGroundColor,
      body: Column(
        children: [
          Container(
            child: Stack(
              children: [
                _headSection(),
                Positioned(
                  top: 95,
                  left: 0,
                  child: Text(
                    "My Bills",
                    style: TextStyle(fontSize: 67, color: Color(0xFF293952)),
                  ),
                ),
                Positioned(
                  top: 70,
                  left: 20,
                  child: Text(
                    "My Bills",
                    style: TextStyle(
                        fontSize: 53,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
          _list(),
          _endbtn(),
        ],
      ),
    );
  }

  _headSection() {
    return Container(
      height: 310,
      child: Stack(children: [
        _mainBackground(),
        _curve(),
        _button(),
      ]),
    );
  }

  _mainBackground() {
    return Positioned(
        bottom: 10,
        child: Container(
          height: 300,
          width: d,
          decoration: BoxDecoration(
              image: DecorationImage(
            image: AssetImage("images/background.png"),
            fit: BoxFit.fitHeight,
          )),
        ));
  }

  _curve() {
    return Positioned(
        bottom: 10,
        left: 0,
        right: -2,
        child: Container(
          height: c * 0.1,
          decoration: BoxDecoration(
              image: DecorationImage(
            image: AssetImage("images/curve.png"),
            fit: BoxFit.cover,
          )),
        ));
  }

  _button() {
    return Builder(builder: (context) {
      return Positioned(
          right: 50,
          bottom: 5,
          child: GestureDetector(
            onTap: () {
              showModalBottomSheet<dynamic>(
                  isScrollControlled: true,
                  barrierColor: Colors.transparent,
                  backgroundColor: Colors.transparent,
                  context: context,
                  builder: (BuildContext bc) {
                    return Container(
                      height: MediaQuery.of(context).size.height - 240,
                      child: Stack(
                        children: [
                          Positioned(
                            right: 0,
                            left: 0,
                            bottom: 0,
                            child: Container(
                              color: Color(0xFFef1f4).withOpacity(0.7),
                              height: MediaQuery.of(context).size.height - 302,
                              width: MediaQuery.of(context).size.width,
                            ),
                          ),
                          Positioned(
                            right: 51,
                            top: 2,
                            child: Container(
                              padding: EdgeInsets.only(top: 3, bottom: 20),
                              height: 250,
                              width: 60,
                              decoration: BoxDecoration(
                                  color: AppColor.mainColor,
                                  borderRadius: BorderRadius.circular(29)),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Button(
                                    icon: Icons.cancel,
                                    icolor: AppColor.mainColor,
                                    tcolor: Colors.white,
                                    bgcolor: Colors.white,
                                    onTap: () {
                                      Navigator.pop(context);
                                    },
                                  ),
                                  Button(
                                    icon: Icons.add,
                                    icolor: AppColor.mainColor,
                                    tcolor: Colors.white,
                                    bgcolor: Colors.white,
                                    onTap: () {},
                                    text: "Add Bill",
                                  ),
                                  Button(
                                    icon: Icons.history,
                                    icolor: AppColor.mainColor,
                                    tcolor: Colors.white,
                                    bgcolor: Colors.white,
                                    onTap: () {},
                                    text: "History",
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    );
                  });
            },
            child: Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage("images/lines.png")),
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 15,
                        offset: Offset(0, 1),
                        color: Color(0xFF11324d).withOpacity(0.1)),
                  ]),
            ),
          ));
    });
  }

  _list() {
    return Builder(builder: (context) {
      return Container(
        height: 450,
        child: MediaQuery.removePadding(
          context: context,
          removeTop: true,
          child: ListView.builder(
            padding: EdgeInsets.zero,
            itemBuilder: (_, index) {
              return Container(
                margin: EdgeInsets.fromLTRB(0, 10, 18, 0),
                padding: EdgeInsets.fromLTRB(18, 10, 0, 0),
                height: 130,
                width: d,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(30),
                      bottomRight: Radius.circular(30),
                    ),
                    boxShadow: [
                      BoxShadow(
                          color: Color(0xFFd8dbe0),
                          offset: Offset(1, 1),
                          blurRadius: 20.0,
                          spreadRadius: 10.0)
                    ]),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              margin: EdgeInsets.fromLTRB(0, 0, 10, 0),
                              height: 60,
                              width: 60,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  border:
                                      Border.all(width: 3, color: Colors.grey),
                                  image: DecorationImage(
                                    image: AssetImage("images/brand1.png"),
                                    fit: BoxFit.fitHeight,
                                  )),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "KenGen Power",
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: AppColor.mainColor,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(height: 8),
                                Text(
                                  "ID:845694",
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: AppColor.idColor,
                                    fontWeight: FontWeight.bold,
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                        SizedText(
                            text: "Auto pay on 24th May 22",
                            color: AppColor.green)
                      ],
                    ),
                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 80,
                              height: 30,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: AppColor.selectBackground,
                              ),
                              child: Center(
                                child: Text(
                                  "Select",
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: AppColor.selectColor),
                                ),
                              ),
                            ),
                            Expanded(child: Container()),
                            Text(
                              "\$1234.00",
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w900,
                                  color: AppColor.mainColor),
                            ),
                            Text(
                              "Due in 3 days",
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700,
                                  color: AppColor.idColor),
                            ),
                            SizedBox(
                              height: 10,
                            )
                          ],
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Container(
                          height: 35,
                          width: 5,
                          decoration: BoxDecoration(
                              color: AppColor.halfOval,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(30),
                                bottomLeft: Radius.circular(30),
                              )),
                        ),
                      ],
                    )
                  ],
                ),
              );
            },
            itemCount: 3,
          ),
        ),
      );
    });
  }

  _endbtn() {
    return Builder(
      builder: (context) {
        return Positioned(
            bottom: 10,
            child: AppButton(
              onTap: () {
                Navigator.pushNamed(context, '//');
              },
              text: "Pay all bills",
              backgroundColor: AppColor.mainColor,
              textColor: Colors.white,
            ));
      }
    );
  }
}
