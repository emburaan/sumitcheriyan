import 'package:flutter/material.dart';
import 'package:folio/constants.dart';
import 'package:folio/provider/themeProvider.dart';
import 'package:folio/widget/aboutMeMetaData.dart';
import 'package:folio/widget/adaptiveText.dart';
import 'package:folio/widget/communityIconBtn.dart';
import 'package:folio/widget/customBtn.dart';
import 'package:folio/widget/customTextHeading.dart';
import 'package:folio/widget/toolsTechWidget.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'package:universal_html/html.dart' as html;

class AboutDesktop extends StatelessWidget {
  final _communityLogoHeight = [60.0, 70.0, 30.0];

  @override
  Widget build(BuildContext context) {
    final _themeProvider = Provider.of<ThemeProvider>(context);
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: width * 0.02,
      ),
      color: _themeProvider.lightTheme ? Colors.white : Colors.black,
      child: Column(
        children: [
          CustomSectionHeading(text: "\nAbout Me"),
          CustomSectionSubHeading(text: "Get to know me :)"),
          SizedBox(height: 30.0),
          Row(
            children: [
              Expanded(
                child: Image.asset(
                  'assets/about_me.jpeg',
                  height: height * 0.7,
                ),
              ),
              Expanded(
                flex: width < 1230 ? 2 : 1,
                child: Container(
                  padding: EdgeInsets.only(left: width < 1230 ? 25.0 : 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AdaptiveText(
                        "Who am I?",
                        style: GoogleFonts.montserrat(
                            color: kPrimaryColor, fontSize: height * 0.025),
                      ),
                      SizedBox(
                        height: height * 0.03,
                      ),
                      AdaptiveText(
                        "I'm Sumit Cheriyan,a Android developer, a Flutter developer and UI designer.",
                        style: GoogleFonts.montserrat(
                          fontSize: height * 0.035,
                          fontWeight: FontWeight.w400,
                          color: _themeProvider.lightTheme
                              ? Colors.black
                              : Colors.white,
                        ),
                      ),
                      SizedBox(
                        height: height * 0.02,
                      ),
                      AdaptiveText(
                        "I am an Android & Flutter Developer with experience in Mobile Development and Web Technologies. In love with learning new technologies and using them to give solutions to real-world problems. What I like about what I do is that there is always something that is to be learned and that provides new ideas to solve other problems and that is a never-ending cycle",
                        style: GoogleFonts.montserrat(
                          fontSize: height * 0.02,
                          color: Colors.grey[500],
                          height: 2.0,
                        ),
                      ),
                      SizedBox(
                        height: height * 0.025,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          border: Border(
                            bottom:
                                BorderSide(color: Colors.grey[800], width: 2.0),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: height * 0.02,
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Technologies I have worked with:",
                          style: GoogleFonts.montserrat(
                              color: kPrimaryColor, fontSize: height * 0.015),
                        ),
                      ),
                      Row(
                        children: [
                          for (int i = 0; i < kTools.length; i++)
                            ToolTechWidget(
                              techName: kTools[i],
                            ),
                        ],
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Designing tools i have worked with:",
                          style: GoogleFonts.montserrat(
                              color: kPrimaryColor, fontSize: height * 0.015),
                        ),
                      ),
                      Row(
                        children: [
                          for (int i = 0; i < dTools.length; i++)
                            ToolTechWidget(
                              techName: dTools[i],
                            ),
                        ],
                      ),
                      SizedBox(
                        height: height * 0.02,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          border: Border(
                            bottom:
                                BorderSide(color: Colors.grey[800], width: 2.0),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: height * 0.025,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          AboutMeMetaData(
                            data: "Name",
                            information: "Sumit Cheriyan",
                          ),
                          AboutMeMetaData(
                            data: "Email",
                            information: "Sumit.cheriyan56@gmail.com",
                          ),
                        ],
                      ),
                      SizedBox(
                        height: height * 0.02,
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: OutlinedCustomBtn(
                              onPressed: () {
                                html.window.open(
                                    'https://drive.google.com/file/d/1oLGbxpDD2IAmcdPCMVBE7aGHKoHKjwCh/view?usp=sharingE',
                                    "pdf");
                              },
                              btnText: "Resume",
                            ),
                          ),
                          Container(
                            width: width * 0.05,
                            decoration: BoxDecoration(
                              border: Border(
                                bottom: BorderSide(
                                    color: Colors.grey[900], width: 2.0),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                width: width < 1230 ? width * 0.05 : width * 0.1,
              ),
            ],
          )
        ],
      ),
    );
  }
}
