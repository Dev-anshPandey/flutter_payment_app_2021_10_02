import 'package:flutter/material.dart';
import 'package:flutter_payment_app/component/colors.dart';
import 'package:flutter_payment_app/widgets/button.dart';
import 'package:flutter_payment_app/widgets/large_button.dart';

class Payment extends StatelessWidget {
  const Payment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;

    double w = MediaQuery.of(context).size.width;
    return Scaffold(
        body: Container(
      padding: EdgeInsets.only(top: 80, left: 20, right: 20),
      height: h,
      width: w,
      decoration: BoxDecoration(
          image: DecorationImage(
        image: AssetImage(
          "images/paymentbackground.png",
        ),
        fit: BoxFit.cover,
      )),
      child: Column(
        children: [
          Container(
            width: double.maxFinite,
            height: h * 0.14,
            decoration: BoxDecoration(
                image: DecorationImage(
              image: AssetImage(
                "images/success.png",
              ),
              fit: BoxFit.fitWidth,
            )),
          ),
          Text(
            "Success !",
            style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: AppColor.mainColor),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "Payment Completed for 2 bills",
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: AppColor.idColor),
          ),
          SizedBox(
            height: h * 0.05,
          ),
          Container(
            width: 350,
            height: 160,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border:
                    Border.all(width: 2, color: Colors.grey.withOpacity(0.5))),
            child: MediaQuery.removePadding(
              removeTop: true,
              context: context,
              child: ListView.builder(
                itemBuilder: (_, index) {
                  return Column(
                    children: [
                      Row(
                        children: [
                          Container(
                              margin: EdgeInsets.only(top: 15, left: 20),
                              width: 50,
                              height: 50,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(25),
                                  color: Colors.green),
                              child: Icon(
                                Icons.done,
                                size: 30,
                                color: Colors.white,
                              )),
                          SizedBox(
                            width: 15,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 12,
                              ),
                              Text(
                                "KenGen Power",
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: AppColor.mainColor),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text("ID:465789",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: AppColor.idColor))
                            ],
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Column(
                            children: [
                              SizedBox(
                                height: 38,
                              ),
                              Text("\$1248.00",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700,
                                      color: AppColor.mainColor))
                            ],
                          )
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                          width: double.infinity,
                          height: 2,
                          decoration: BoxDecoration(
                              color: Colors.grey.withOpacity(0.5))),
                    ],
                  );
                },
                itemCount: 3,
              ),
            ),
          ),
          SizedBox(
            height: h * 0.05 - 8,
          ),
          Text(
            "Total Amount",
            style: TextStyle(fontSize: 15, color: AppColor.idColor),
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            "\$2840.00",
            style: TextStyle(fontSize: 27, color: AppColor.mainColor),
          ),
          SizedBox(
            height: h * 0.13,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Button(
                  icon: Icons.share_sharp,
                  text: "share",
                  onTap: () {},
                  icolor: Colors.white),
              SizedBox(width: h * 0.06),
              Button(
                  icon: Icons.print_outlined,
                  text: "print",
                  onTap: () {},
                  icolor: Colors.white)
            ],
          ),
          SizedBox(
            height: 26,
          ),
          AppButton(
            text: "Done",
            backgroundColor: Colors.white,
            onTap: () {
              Navigator.pushNamed(context, "/");
            },
          )
        ],
      ),
    ));
  }
}
