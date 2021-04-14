import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:guru_book/constant.dart';
import 'package:guru_book/responsive.dart';
import 'package:websafe_svg/websafe_svg.dart';

class Verify extends StatefulWidget {
  @override
  _VerifyState createState() => _VerifyState();
}

class _VerifyState extends State<Verify> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar2(
        height: Responsive.isMobile(context)
            ? ScreenUtil().setHeight(150)
            : ScreenUtil().setHeight(250),
      ),
      body: Container(
        child: Stack(
          alignment: Alignment.center,
          children: [
            Positioned(
              top: 30,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Verify Phone Number",
                      style: GoogleFonts.ubuntu(
                          fontSize: Responsive.isMobile(context)
                              ? ScreenUtil().setSp(35)
                              : ScreenUtil().setSp(55),
                          color: Color(0xff2B3040),
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: ScreenUtil().setHeight(20),
                    ),
                    Container(
                      height: ScreenUtil().setHeight(120),
                      width: Responsive.isMobile(context)
                          ? ScreenUtil().setWidth(480)
                          : ScreenUtil().setWidth(250),
                      child: TextFormField(
                        style: GoogleFonts.ubuntu(
                            fontSize: ScreenUtil().setSp(20),
                            color: Colors.black),
                        decoration: InputDecoration(
                          hintText: "6-digit code",
                          hintStyle: GoogleFonts.ubuntu(
                              fontSize: Responsive.isMobile(context)
                                  ? ScreenUtil().setSp(25)
                                  : ScreenUtil().setSp(35),
                              color: Colors.grey,
                              fontWeight: FontWeight.w400),
                          labelText: "OTP CODE",
                          labelStyle: GoogleFonts.ubuntu(
                              fontSize: ScreenUtil().setSp(35),
                              color: primaryColor,
                              fontWeight: FontWeight.w500),
                          floatingLabelBehavior: FloatingLabelBehavior.always,
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Get.isDarkMode
                                      ? Colors.white
                                      : primaryColor)),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Get.isDarkMode
                                      ? Colors.white
                                      : primaryColor)),
                        ),
                      ),
                    ),
                    Container(
                        child: Center(
                            child: Text(
                          "Continue",
                          style: GoogleFonts.ubuntu(
                              fontSize: ScreenUtil().setSp(28),
                              color: Colors.black,
                              fontWeight: FontWeight.w500),
                        )),
                        height: ScreenUtil().setHeight(90),
                        width: Responsive.isMobile(context)
                            ? ScreenUtil().setWidth(480)
                            : ScreenUtil().setWidth(250),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6),
                          boxShadow: [
                            BoxShadow(
                              color: Color(0x3f000000),
                              blurRadius: 24,
                              offset: Offset(12, 12),
                            ),
                          ],
                          color: Color(0xff06b7ef),
                        )),
                    SizedBox(
                      height: ScreenUtil().setHeight(30),
                    ),
                    Row(
                      children: [
                        Text("A 6-digit OTP has been sent to",
                            style: GoogleFonts.ubuntu(
                                fontSize: Responsive.isMobile(context)
                                    ? ScreenUtil().setSp(25)
                                    : ScreenUtil().setSp(25),
                                color: Colors.black,
                                fontWeight: FontWeight.bold)),
                        SizedBox(
                          width: ScreenUtil().setWidth(3),
                        ),
                        Text(
                          "+4930901820",
                          style: GoogleFonts.ubuntu(
                              fontSize: Responsive.isMobile(context)
                                  ? ScreenUtil().setSp(25)
                                  : ScreenUtil().setSp(25),
                              color: primaryColor,
                              fontWeight: FontWeight.w400),
                        )
                      ],
                    ),
                    SizedBox(
                      height: ScreenUtil().setHeight(30),
                    ),
                    Row(
                      children: [
                        Text("Did not recieve OTP?",
                            style: GoogleFonts.ubuntu(
                                fontSize: Responsive.isMobile(context)
                                    ? ScreenUtil().setSp(25)
                                    : ScreenUtil().setSp(25),
                                color: Colors.grey,
                                fontWeight: FontWeight.w400)),
                        SizedBox(
                          width: ScreenUtil().setWidth(3),
                        ),
                        Text(
                          "Resend",
                          style: GoogleFonts.ubuntu(
                              fontSize: Responsive.isMobile(context)
                                  ? ScreenUtil().setSp(25)
                                  : ScreenUtil().setSp(25),
                              color: primaryColor,
                              fontWeight: FontWeight.w400),
                        )
                      ],
                    ),
                    SizedBox(
                      height: ScreenUtil().setHeight(30),
                    ),
                    Text(
                      "Call Me Instead",
                      style: GoogleFonts.ubuntu(
                          fontSize: Responsive.isMobile(context)
                              ? ScreenUtil().setSp(25)
                              : ScreenUtil().setSp(25),
                          color: primaryColor,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: ScreenUtil().setHeight(30),
                    ),
                    Text(
                      "Edit Phone Number",
                      style: GoogleFonts.ubuntu(
                          fontSize: Responsive.isMobile(context)
                              ? ScreenUtil().setSp(25)
                              : ScreenUtil().setSp(25),
                          color: primaryColor,
                          fontWeight: FontWeight.w400),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomAppBar2 extends PreferredSize {
  final height;
  final text;
  CustomAppBar2({this.height = kToolbarHeight, this.text});

  Size get preferredSize => Size.fromHeight(height);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SafeArea(
        child: Stack(
          alignment: Alignment.center,
          children: [
            SizedBox(width: ScreenUtil().setWidth(80)),
            Positioned(
              left: 20,
              top: 20,
              child: WebsafeSvg.asset("assets/images/guruBooklogo.svg",
                  height: ScreenUtil().setHeight(80),
                  width: ScreenUtil().setWidth(250)),
            ),
            Positioned(
                right: 20,
                top: 20,
                child: Row(
                  children: [
                    WebsafeSvg.asset("assets/images/fire.svg"),
                    SizedBox(width: ScreenUtil().setWidth(4)),
                    Column(
                      children: [
                        Text(
                          "George Sood",
                          style: TextStyle(
                            color: Color(0xff333333),
                            fontSize: 16,
                            fontFamily: "Ubuntu",
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Opacity(
                          opacity: 0.50,
                          child: Text(
                            "georgesood@gmail.com",
                            style: TextStyle(
                              color: Color(0xff333333),
                              fontSize: 12,
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ))
          ],
        ),
      ),
      color: primaryColor,
      height: preferredSize.height,
    );
  }
}
