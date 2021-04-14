import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:guru_book/constant.dart';
import 'package:guru_book/responsive.dart';
import 'package:guru_book/verify.dart';
import 'package:websafe_svg/websafe_svg.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(GuruBook());
}

class GuruBook extends StatefulWidget {
  @override
  _GuruBookState createState() => _GuruBookState();
}

class _GuruBookState extends State<GuruBook> {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(720, 1320),
      builder: () => GetMaterialApp(
        debugShowCheckedModeBanner: false,
        home: LoginPageBody(),
      ),
    );
  }
}

class LoginPageBody extends StatefulWidget {
  @override
  _LoginPageBodyState createState() => _LoginPageBodyState();
}

class _LoginPageBodyState extends State<LoginPageBody> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          if (Responsive.isMobile(context))
            WebsafeSvg.asset("assets/images/guruBookImage.svg",
                fit: BoxFit.fill),
          Container(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                if (!Responsive.isMobile(context))
                  Expanded(
                      flex: 11,
                      child: WebsafeSvg.asset("assets/images/guruBookImage.svg",
                          fit: BoxFit.fill)),
                Expanded(
                  flex: 10,
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: ScreenUtil().setHeight(20),
                        ),
                        WebsafeSvg.asset("assets/images/guruBooklogo.svg",
                            height: ScreenUtil().setHeight(120),
                            width: ScreenUtil().setWidth(120)),
                        SizedBox(
                          height: ScreenUtil().setHeight(20),
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "Join us to start learning",
                              textAlign: TextAlign.center,
                              style: GoogleFonts.ubuntu(
                                  fontSize: ScreenUtil().setSp(30),
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                            SizedBox(
                              height: ScreenUtil().setHeight(20),
                            ),
                            Text(
                              "“Learn the German highway code in your own language”",
                              style: GoogleFonts.ubuntu(
                                  fontSize: ScreenUtil().setSp(22),
                                  color: Colors.black),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: ScreenUtil().setHeight(30),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            textFieldRow(
                                obsecure: false,
                                labelText1: "Gender",
                                labelText2: "Title"),
                            SizedBox(
                              height: ScreenUtil().setHeight(20),
                            ),
                            textFieldRow(
                                obsecure: false,
                                labelText1: "First Name",
                                labelText2: "Last Name"),
                            SizedBox(
                              height: ScreenUtil().setHeight(20),
                            ),
                            textFieldRow(
                                obsecure: false,
                                labelText1: "Date of Birth",
                                labelText2: "Place of Birth"),
                            SizedBox(
                              height: ScreenUtil().setHeight(20),
                            ),
                            textFieldRow(
                                obsecure: false,
                                labelText1: "Email Address",
                                labelText2: "Post Code"),
                            SizedBox(
                              height: ScreenUtil().setHeight(20),
                            ),
                            textFieldRow(
                                obsecure: false,
                                labelText1: "Street & Street Number",
                                labelText2: "City"),
                            SizedBox(
                              height: ScreenUtil().setHeight(20),
                            ),
                            textFieldRow(
                                obsecure: true,
                                labelText1: "Password",
                                labelText2: "Re enter Password"),
                            SizedBox(
                              height: ScreenUtil().setHeight(20),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                GestureDetector(
                                    onTap: () {
                                      Get.to(Verify());
                                    },
                                    child: Container(
                                        child: Center(
                                            child: Text(
                                          "SIGN UP",
                                          style: GoogleFonts.ubuntu(
                                              fontSize: ScreenUtil().setSp(28),
                                              color: Colors.black,
                                              fontWeight: FontWeight.w500),
                                        )),
                                        height: ScreenUtil().setHeight(90),
                                        width: Responsive.isMobile(context)
                                            ? ScreenUtil().setWidth(290)
                                            : ScreenUtil().setWidth(150),
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(6),
                                          boxShadow: [
                                            BoxShadow(
                                              color: Color(0x3f000000),
                                              blurRadius: 24,
                                              offset: Offset(12, 12),
                                            ),
                                          ],
                                          color: Color(0xff06b7ef),
                                        ))),
                                SizedBox(width: ScreenUtil().setWidth(10)),
                                Container(
                                    child: Padding(
                                      padding: EdgeInsets.only(left: 15),
                                      child: Center(
                                        child: Row(
                                          children: [
                                            Expanded(
                                              child: Text(
                                                "Already have an account?",
                                                overflow: TextOverflow.ellipsis,
                                                style: GoogleFonts.ubuntu(
                                                    color:   Responsive.isMobile(context)? Colors.white : Colors.grey,
                                                    fontSize:
                                                        ScreenUtil().setSp(20)),
                                              ),
                                            ),
                                            Expanded(
                                              child: Text("Login",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  style: GoogleFonts.ubuntu(
                                                    color:  Responsive.isMobile(context)? Colors.white  :primaryColor,
                                                    fontSize:
                                                        ScreenUtil().setSp(23),
                                                  )),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                    height: ScreenUtil().setHeight(100),
                                    width: Responsive.isMobile(context)
                                        ? ScreenUtil().setWidth(290)
                                        : ScreenUtil().setWidth(150),
                                    decoration: BoxDecoration()),
                              ],
                            ),
                            SizedBox(height: ScreenUtil().setHeight(30)),
                            Padding(
                              padding: EdgeInsets.only(left: 20),
                              child: Center(
                                  child: Column(children: [
                                Text(
                                    "By signing up, you agree to Gurubook’s Terms &\nCondtions and Privacy Policy.",
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.ubuntu(
                                      color:   Responsive.isMobile(context)? Colors.white : Colors.grey,
                                      fontSize: ScreenUtil().setSp(23),
                                    )),
                              ])),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  Row textFieldRow({String labelText1, String labelText2, bool obsecure}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: ScreenUtil().setHeight(120),
          width: Responsive.isMobile(context)
              ? ScreenUtil().setWidth(290)
              : ScreenUtil().setWidth(150),
          child: TextFormField(
            style: GoogleFonts.ubuntu(
                fontSize: ScreenUtil().setSp(20), color:  Responsive.isMobile(context)? Colors.white :  Colors.black),
            decoration: InputDecoration(
              labelText: labelText1,
              labelStyle: GoogleFonts.ubuntu(
                  fontSize: ScreenUtil().setSp(35),
                  color:  Responsive.isMobile(context)? Colors.white :  primaryColor,
                  fontWeight: FontWeight.w400),
              floatingLabelBehavior: FloatingLabelBehavior.always,
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                      color: Responsive.isMobile(context)? Colors.white : primaryColor)),
              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                      color: Responsive.isMobile(context)? Colors.white : primaryColor)),
            ),
          ),
        ),
        SizedBox(width: ScreenUtil().setWidth(10)),
        Container(
          height: ScreenUtil().setHeight(120),
          width: Responsive.isMobile(context)
              ? ScreenUtil().setWidth(290)
              : ScreenUtil().setWidth(150),
          child: TextFormField(
            style: GoogleFonts.ubuntu(
                fontSize: ScreenUtil().setSp(20), color:   Responsive.isMobile(context)? Colors.white :  Colors.black),
            obscureText: obsecure,
            decoration: InputDecoration(
              labelText: labelText2,
              floatingLabelBehavior: FloatingLabelBehavior.always,
              labelStyle: GoogleFonts.ubuntu(
                  fontSize: ScreenUtil().setSp(35),
                  color:  Responsive.isMobile(context)? Colors.white :  primaryColor,
                  fontWeight: FontWeight.w400),
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                      color:  Responsive.isMobile(context)? Colors.white : primaryColor)),
              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                      color:  Responsive.isMobile(context)? Colors.white :   primaryColor)),
            ),
          ),
        ),
      ],
    );
  }
}
