import 'package:flutter/material.dart';


import 'package:universal_html/html.dart' as html;

import '../../configs/app_dimensions.dart';
import '../../configs/app_theme.dart';
import '../../configs/app_typography.dart';
import '../../configs/space.dart';
import '../../utils/about_utils.dart';
import '../../utils/utils.dart';
import '../../widget/about_me_data.dart';
import '../../widget/custom_text_heading.dart';

class AboutDesktop extends StatelessWidget {
  const AboutDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Container(
      padding: Space.h,
      child: Column(
        children: [
          const CustomSectionHeading(
            text: '\nAbout Me',
          ),
          const CustomSectionSubHeading(
            text: 'Get to know me :)',
          ),
          Space.y1!,
          Row(
            children: [
              Expanded(
                child: Image.asset(
                  StaticUtils.coloredPhoto,
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
                      Text(
                        'Who am I?',
                        style: AppText.b1!.copyWith(
                          color: AppTheme.c!.primary,
                        ),
                      ),
                      Space.y1!,
                      Text(
                        AboutUtils.aboutMeHeadline,
                        style: AppText.b1b!.copyWith(
                          fontFamily: 'Montserrat',
                        ),
                      ),
                      Space.y!,
                      Text(
                        AboutUtils.aboutMeDetail,
                        style: AppText.b2!.copyWith(
                          height: 2,
                          letterSpacing: 1.1,
                          fontFamily: 'Montserrat',
                          fontSize: AppDimensions.normalize(5),
                        ),
                        textAlign: TextAlign.justify,
                      ),
                      Space.y!,
                      Divider(
                        color: Colors.grey[800],
                        thickness: AppDimensions.normalize(0.5),
                      ),
                      Space.y!,
                      Text(
                        'Positions I worked in:',
                        style: AppText.l1!.copyWith(
                          color: AppTheme.c!.primary,
                        ),
                      ),
                      Space.y!,
                      Column(
                        children: [
                          Row(
                           children: [
                             Icon(
                               Icons.play_arrow,
                               color: AppTheme.c!.primary,
                               size: AppDimensions.normalize(6),
                             ),
                             Text(
                               " Customer Service ",
                               style: AppText.l1b,
                             ),
                             Icon(
                               Icons.play_arrow,
                               color: AppTheme.c!.primary,
                               size: AppDimensions.normalize(6),
                             ),
                             Text(
                               " Sales officer ",
                               style: AppText.l1b,
                             ),
                             Icon(
                               Icons.play_arrow,
                               color: AppTheme.c!.primary,
                               size: AppDimensions.normalize(6),
                             ),
                             Text(
                               " Teller ",
                               style: AppText.l1b,
                             ),
                           ],
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.play_arrow,
                                color: AppTheme.c!.primary,
                                size: AppDimensions.normalize(6),
                              ),
                              Text(
                                " BMVIP Relationship Manager ",
                                style: AppText.l1b,
                              ),
                              Icon(
                                Icons.play_arrow,
                                color: AppTheme.c!.primary,
                                size: AppDimensions.normalize(6),
                              ),
                              Text(
                                " Business Analyst ",
                                style: AppText.l1b,
                              ),
                            ],
                          ),
                        ],
                      ),
                      Space.y!,
                      Divider(
                        color: Colors.grey[800],
                        thickness: AppDimensions.normalize(0.5),
                      ),
                      Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              AboutMeData(
                                data: "Name",
                                information: "Mohamed Nazmy",
                              ),
                              AboutMeData(
                                data: "Age",
                                information: "29",
                              ),
                            ],
                          ),
                          const Spacer(),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              AboutMeData(
                                data: "Email",
                                information: "melmorsy@banquemisr.com",
                              ),
                              AboutMeData(
                                data: "From",
                                information: "Cairo, Egypt",
                              ),
                            ],
                          ),
                        ],
                      ),
                      Space.y1!,
                      Row(
                        children: [
                          SizedBox(
                            height: AppDimensions.normalize(13),
                            width: AppDimensions.normalize(40),
                            child: OutlinedButton(
                              onPressed: () =>
                                  html.window.open(StaticUtils.resume, 'pdf'),
                              child: const Text(
                                "Resume",
                              ),
                            ),
                          ),
                          Space.x1!,


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
