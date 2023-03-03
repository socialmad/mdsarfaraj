import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mdsarfaraj/data/blogs/data.dart';
import 'package:mdsarfaraj/theme/app_text_theme.dart';
import 'package:mdsarfaraj/theme/colors_theme.dart';
import 'package:mdsarfaraj/utils/assets.dart';
import 'package:mdsarfaraj/utils/constants.dart';
import 'package:mdsarfaraj/utils/launcher.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:url_strategy/url_strategy.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  setPathUrlStrategy();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "MD Sarfaraj | Software Developer(Flutter, Dart, SocialEngine, PHP) | C# Corner MVP",
      debugShowCheckedModeBanner: false,
      theme: ThemeColor().themeData,
      home: const MDSarfaraj(),
    );
  }
}

class MDSarfaraj extends StatefulWidget {
  const MDSarfaraj({Key? key}) : super(key: key);

  @override
  State<MDSarfaraj> createState() => _MDSarfarajState();
}

class _MDSarfarajState extends State<MDSarfaraj> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: const Mobile(),
      desktop: const Desktop(),
      tablet: const Tablet(),
    );
  }
}

class Desktop extends StatefulWidget {
  const Desktop({Key? key}) : super(key: key);

  @override
  State<Desktop> createState() => _DesktopState();
}

class _DesktopState extends State<Desktop> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: ThemeColor.white,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  width: width,
                  height: height,
                  child: Stack(
                    fit: StackFit.loose,
                    alignment: Alignment.bottomLeft,
                    children: [
                      Container(
                        width: width,
                        decoration: const BoxDecoration(
                          color: ThemeColor.primaryAppColor,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            width: width * 0.45,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                RichText(
                                  text: TextSpan(
                                    children: [
                                      TextSpan(
                                        text: "Hi, I'm ",
                                        style: poppinsBold(
                                          fontSize: 45,
                                          color: ThemeColor.white,
                                        ),
                                      ),
                                      TextSpan(
                                        text: username,
                                        style: shantellSansMedium(
                                          fontSize: 50,
                                          color: ThemeColor.white,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Text(
                                  tagline,
                                  softWrap: true,
                                  style: poppinsMedium(
                                    fontSize: 20,
                                    color: ThemeColor.white,
                                  ),
                                ),
                                const SizedBox(height: 20),
                                InkWell(
                                  onTap: () {
                                    Launcher.launchURL(link: resumeURL);
                                  },
                                  child: Container(
                                    width: 180,
                                    padding: const EdgeInsets.all(10.0),
                                    decoration: BoxDecoration(
                                      color: ThemeColor.white,
                                      borderRadius: BorderRadius.circular(4.0),
                                    ),
                                    child: Text(
                                      'Download Resume',
                                      textAlign: TextAlign.center,
                                      style: poppinsMedium(
                                        fontSize: 12,
                                        color: ThemeColor.primaryAppColor,
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          const CircleAvatar(
                            backgroundImage: AssetImage(ImgRes.mdsarfaraj),
                            radius: 250,
                          )
                        ],
                      )
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 10, 0, 0),
                      child: InkWell(
                        onTap: () {
                          Launcher.launchURL(link: csharpcornerURL);
                        },
                        child: Text(
                          username,
                          style: shantellSansMedium(
                              fontSize: 20, color: ThemeColor.white),
                        ),
                      ),
                    ),
                    Container(
                      width: 300,
                      padding: const EdgeInsets.fromLTRB(10, 10, 20, 0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          InkWell(
                            child: SvgPicture.asset(
                              SvgRes.csharpcorner,
                              width: 45,
                              height: 45,
                              color: ThemeColor.white,
                            ),
                            onTap: () {
                              Launcher.launchURL(
                                link: csharpcornerURL,
                              );
                            },
                          ),
                          InkWell(
                            child: SvgPicture.asset(
                              SvgRes.linkedIn,
                              width: 30,
                              height: 30,
                              color: ThemeColor.white,
                            ),
                            onTap: () {
                              Launcher.launchURL(link: linkedInURL);
                            },
                          ),
                          InkWell(
                            child: SvgPicture.asset(
                              SvgRes.github,
                              width: 30,
                              height: 30,
                              color: ThemeColor.white,
                            ),
                            onTap: () {
                              Launcher.launchURL(link: githubURL);
                            },
                          ),
                          InkWell(
                            child: SvgPicture.asset(
                              SvgRes.twitter,
                              width: 30,
                              height: 30,
                              color: ThemeColor.white,
                            ),
                            onTap: () {
                              Launcher.launchURL(link: twitterURL);
                            },
                          ),
                          InkWell(
                            child: SvgPicture.asset(
                              SvgRes.instagram,
                              width: 30,
                              height: 30,
                              color: ThemeColor.white,
                            ),
                            onTap: () {
                              Launcher.launchURL(link: instagramURL);
                            },
                          ),
                        ],
                      ),
                    )
                  ],
                )
              ],
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(80, 20, 80, 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Readme.',
                    style: poppinsBold(
                        fontSize: 35, color: ThemeColor.primaryAppColor),
                  ),
                  Text(
                    "MD Sarfaraj, the international man of software development, is no mystery, as he brings over 3+ years of top-secret tech experience. With expertise to code in Flutter, Dart, SocialEngine, PHP Frameworks (Laravel & CodeIgniter), Firebase, and MySQL, he's the tech world's equivalent of James Bond, always ready to complete his mission with style and efficiency.",
                    style: poppinsRegular(fontSize: 15),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    "But Sarfaraj doesn't need 'Q' for his gadgets and gizmos. He is a creative problem-solver who always brings a touch of humour to every project he works on. He's a master of Flutter and SocialEngine PHP ninja, able to tackle any coding challenge with the same ease as Tom Cruise in Mission Impossible.",
                    style: poppinsRegular(fontSize: 15),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    "When he's not saving the world from lousy coding and development, he's sharing his tech expertise with the world, writing blog posts and speaking at events. He can spin the Web like a tech version of Spider-Man (without the latex suit). His passion for technology and commitment to excellence, Sarfaraj, is the perfect addition to any team needing a highly skilled and dedicated software developer. Get ready to be on the winning team with MD Sarfaraj on your side.",
                    style: poppinsRegular(fontSize: 15),
                  ),
                  const SizedBox(height: 10),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: width * 0.45,
                  height: 300,
                  padding: const EdgeInsets.fromLTRB(80, 20, 80, 20),
                  decoration: const BoxDecoration(
                    color: ThemeColor.lightEggBlueColor,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'A quick overview',
                        style: poppinsBold(
                            fontSize: 35, color: ThemeColor.primaryAppColor),
                      ),
                      Text(
                        '3+ years of experience',
                        style: poppinsRegular(),
                      )
                    ],
                  ),
                ),
                Container(
                  width: width * 0.55,
                  height: 300,
                  decoration: const BoxDecoration(
                    color: ThemeColor.lightEggBlueColor,
                  ),
                  padding: const EdgeInsets.fromLTRB(80, 20, 80, 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ListTile(
                        leading: const CircleAvatar(
                          backgroundImage: AssetImage(ImgRes.absyz),
                        ),
                        title: Text(
                          'Mobile Application Developer',
                          style: poppinsMedium(fontSize: 14),
                        ),
                        subtitle: Text(
                          'ABSYZ Inc, Oct 2022 - Present',
                          style: poppinsRegular(
                              fontSize: 12,
                              color: ThemeColor.secondaryDarkGrey),
                        ),
                      ),
                      ListTile(
                        leading: const CircleAvatar(
                          backgroundImage: AssetImage(ImgRes.intechnique),
                        ),
                        title: Text(
                          'Senior Software Developer',
                          style: poppinsMedium(fontSize: 14),
                        ),
                        subtitle: Text(
                          'Intechnique Limited, Apr 2021 - Sept 2022',
                          style: poppinsRegular(
                              fontSize: 12,
                              color: ThemeColor.secondaryDarkGrey),
                        ),
                      ),
                      ListTile(
                        leading: const CircleAvatar(
                          backgroundImage: AssetImage(ImgRes.fn),
                        ),
                        title: Text(
                          'Software Developer',
                          style: poppinsMedium(fontSize: 14),
                        ),
                        subtitle: Text(
                          'Floating Numbers Digital Solutions, Aug 2019 - Feb 2021',
                          style: poppinsRegular(
                              fontSize: 12,
                              color: ThemeColor.secondaryDarkGrey),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Container(
              width: width,
              height: 280,
              padding: const EdgeInsets.fromLTRB(80, 20, 80, 0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Skills',
                    style: poppinsBold(
                      fontSize: 35,
                      color: ThemeColor.primaryAppColor,
                    ),
                  ),
                  const SizedBox(height: 20),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.fromLTRB(15, 10, 15, 10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SvgPicture.asset(
                                SvgRes.flutter,
                                width: 100,
                                height: 100,
                              ),
                              const SizedBox(height: 5),
                              Text(
                                'Flutter',
                                style: poppinsBold(),
                              )
                            ],
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.fromLTRB(15, 10, 15, 10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SvgPicture.asset(
                                SvgRes.dart,
                                width: 100,
                                height: 100,
                              ),
                              const SizedBox(height: 5),
                              Text(
                                'Dart',
                                style: poppinsBold(),
                              )
                            ],
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.fromLTRB(15, 10, 15, 10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SvgPicture.asset(
                                SvgRes.javascript,
                                width: 100,
                                height: 100,
                              ),
                              const SizedBox(height: 5),
                              Text(
                                'JavaScript',
                                style: poppinsBold(),
                              )
                            ],
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.fromLTRB(15, 10, 15, 10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SvgPicture.asset(
                                SvgRes.php,
                                width: 100,
                                height: 100,
                              ),
                              const SizedBox(height: 5),
                              Text(
                                'PHP',
                                style: poppinsBold(),
                              )
                            ],
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.fromLTRB(15, 10, 15, 10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SvgPicture.asset(
                                SvgRes.laravel,
                                width: 100,
                                height: 100,
                              ),
                              const SizedBox(height: 5),
                              Text(
                                'Laravel',
                                style: poppinsBold(),
                              )
                            ],
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.fromLTRB(15, 10, 15, 10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SvgPicture.asset(
                                SvgRes.codeigniter,
                                width: 100,
                                height: 100,
                              ),
                              const SizedBox(height: 5),
                              Text(
                                'Codeigniter',
                                style: poppinsBold(),
                              )
                            ],
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.fromLTRB(15, 10, 15, 10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SvgPicture.asset(
                                SvgRes.git,
                                width: 100,
                                height: 100,
                              ),
                              const SizedBox(height: 5),
                              Text(
                                'Git',
                                style: poppinsBold(),
                              )
                            ],
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.fromLTRB(15, 10, 15, 10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SvgPicture.asset(
                                SvgRes.firebase,
                                width: 100,
                                height: 100,
                              ),
                              const SizedBox(height: 5),
                              Text(
                                'Firebase',
                                style: poppinsBold(),
                              )
                            ],
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.fromLTRB(15, 10, 15, 10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SvgPicture.asset(
                                SvgRes.mysql,
                                width: 100,
                                height: 100,
                              ),
                              const SizedBox(height: 5),
                              Text(
                                'MySQL',
                                style: poppinsBold(),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              width: width,
              padding: const EdgeInsets.fromLTRB(80, 20, 80, 30),
              decoration: const BoxDecoration(
                color: ThemeColor.lightEggBlueColor,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Blogs",
                    style: poppinsBold(
                      fontSize: 35,
                      color: ThemeColor.primaryAppColor,
                    ),
                  ),
                  const SizedBox(height: 20),
                  SizedBox(
                    height: 360,
                    child: ListView.separated(
                      shrinkWrap: true,
                      physics: const ClampingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      itemCount: blogs.length,
                      itemBuilder: (context, index) {
                        return Container(
                          width: 280,
                          decoration: BoxDecoration(
                            color: ThemeColor.white,
                            borderRadius: BorderRadius.circular(4.0),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                children: [
                                  ClipRRect(
                                    child: Image.network(
                                      blogs[index].image.toString(),
                                      height: 160,
                                      fit: BoxFit.fill,
                                    ),
                                    borderRadius: const BorderRadius.only(
                                        topLeft: Radius.circular(4.0),
                                        topRight: Radius.circular(4.0)),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Text(
                                      blogs[index].title.toString(),
                                      style: poppinsBold(fontSize: 15),
                                      maxLines: 3,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                  Container(
                                    padding: const EdgeInsets.fromLTRB(
                                        10, 0, 10, 10),
                                    child: Text(
                                      blogs[index].body.toString(),
                                      style: poppinsRegular(fontSize: 12),
                                      maxLines: 4,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                ],
                              ),
                              Align(
                                child: InkWell(
                                  child: Padding(
                                    child: Text(
                                      'Read more.',
                                      style: poppinsBold(
                                        fontSize: 12,
                                        color: ThemeColor.primaryAppColor,
                                      ),
                                    ),
                                    padding: EdgeInsets.fromLTRB(0, 0, 10, 10),
                                  ),
                                  onTap: () {
                                    Launcher.launchURL(
                                        link: blogs[index].url.toString());
                                  },
                                ),
                                alignment: Alignment.bottomRight,
                              )
                            ],
                          ),
                        );
                      },
                      separatorBuilder: (context, index) {
                        return SizedBox(width: 20);
                      },
                    ),
                  )
                ],
              ),
            ),
            Container(
              width: width,
              height: 280,
              decoration: const BoxDecoration(color: ThemeColor.primaryBlack),
              padding: const EdgeInsets.fromLTRB(80, 20, 80, 0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "How about we link up?",
                        style: poppinsBold(
                          fontSize: 35,
                          color: ThemeColor.white,
                        ),
                      ),
                      RichText(
                        text: TextSpan(children: [
                          TextSpan(
                            text: 'Feel free to send me an email at ',
                            style: poppinsMedium(
                              color: ThemeColor.white,
                              fontSize: 15,
                            ),
                          ),
                          TextSpan(
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                Launcher.openMail(link: emailID);
                              },
                            text: emailID,
                            style: poppinsMedium(
                              color: ThemeColor.primaryAppColor,
                              fontSize: 15,
                            ),
                          ),
                        ]),
                      )
                    ],
                  ),
                  Container(
                    alignment: Alignment.bottomRight,
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: 'Design & built by ',
                              style: poppinsRegular(
                                fontSize: 14,
                                color: ThemeColor.white,
                              ),
                            ),
                            TextSpan(
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  Launcher.launchURL(link: csharpcornerURL);
                                },
                              text: username,
                              style: shantellSansMedium(
                                  fontSize: 16,
                                  color: ThemeColor.primaryAppColor),
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Tablet extends StatefulWidget {
  const Tablet({Key? key}) : super(key: key);

  @override
  State<Tablet> createState() => _TabletState();
}

class _TabletState extends State<Tablet> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: ThemeColor.white,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  width: width,
                  height: height,
                  child: Stack(
                    fit: StackFit.loose,
                    alignment: Alignment.center,
                    children: [
                      Container(
                        width: width,
                        decoration: const BoxDecoration(
                          color: ThemeColor.primaryAppColor,
                        ),
                      ),
                      Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Column(
                              children: [
                                const CircleAvatar(
                                  backgroundImage:
                                      AssetImage(ImgRes.mdsarfaraj),
                                  radius: 250,
                                ),
                                const SizedBox(height: 30),
                                RichText(
                                  text: TextSpan(
                                    children: [
                                      TextSpan(
                                        text: "Hi, I'm ",
                                        style: poppinsBold(
                                          fontSize: 45,
                                          color: ThemeColor.white,
                                        ),
                                      ),
                                      TextSpan(
                                        text: username,
                                        style: shantellSansMedium(
                                          fontSize: 50,
                                          color: ThemeColor.white,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Text(
                                  tagline,
                                  softWrap: true,
                                  style: poppinsMedium(
                                    fontSize: 20,
                                    color: ThemeColor.white,
                                  ),
                                ),
                                const SizedBox(height: 20),
                                InkWell(
                                  onTap: () {
                                    Launcher.launchURL(link: resumeURL);
                                  },
                                  child: Container(
                                    width: 200,
                                    padding: const EdgeInsets.all(10.0),
                                    decoration: BoxDecoration(
                                      color: ThemeColor.white,
                                      borderRadius: BorderRadius.circular(4.0),
                                    ),
                                    child: Text(
                                      'Download Resume',
                                      textAlign: TextAlign.center,
                                      style: poppinsMedium(
                                        fontSize: 14,
                                        color: ThemeColor.primaryAppColor,
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 20),
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 10, 0, 0),
                      child: InkWell(
                        onTap: () {
                          Launcher.launchURL(link: csharpcornerURL);
                        },
                        child: Text(
                          username,
                          style: shantellSansMedium(
                              fontSize: 20, color: ThemeColor.white),
                        ),
                      ),
                    ),
                    Container(
                      width: 300,
                      padding: const EdgeInsets.fromLTRB(10, 10, 20, 0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          InkWell(
                            child: SvgPicture.asset(
                              SvgRes.csharpcorner,
                              width: 45,
                              height: 45,
                              color: ThemeColor.white,
                            ),
                            onTap: () {
                              Launcher.launchURL(
                                link: csharpcornerURL,
                              );
                            },
                          ),
                          InkWell(
                            child: SvgPicture.asset(
                              SvgRes.linkedIn,
                              width: 30,
                              height: 30,
                              color: ThemeColor.white,
                            ),
                            onTap: () {
                              Launcher.launchURL(link: linkedInURL);
                            },
                          ),
                          InkWell(
                            child: SvgPicture.asset(
                              SvgRes.github,
                              width: 30,
                              height: 30,
                              color: ThemeColor.white,
                            ),
                            onTap: () {
                              Launcher.launchURL(link: githubURL);
                            },
                          ),
                          InkWell(
                            child: SvgPicture.asset(
                              SvgRes.twitter,
                              width: 30,
                              height: 30,
                              color: ThemeColor.white,
                            ),
                            onTap: () {
                              Launcher.launchURL(link: twitterURL);
                            },
                          ),
                          InkWell(
                            child: SvgPicture.asset(
                              SvgRes.instagram,
                              width: 30,
                              height: 30,
                              color: ThemeColor.white,
                            ),
                            onTap: () {
                              Launcher.launchURL(link: instagramURL);
                            },
                          ),
                        ],
                      ),
                    )
                  ],
                )
              ],
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(80, 20, 80, 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Readme.',
                    style: poppinsBold(
                        fontSize: 35, color: ThemeColor.primaryAppColor),
                  ),
                  Text(
                    "MD Sarfaraj, the international man of software development, is no mystery, as he brings over 3+ years of top-secret tech experience. With expertise to code in Flutter, Dart, SocialEngine, PHP Frameworks (Laravel & CodeIgniter), Firebase, and MySQL, he's the tech world's equivalent of James Bond, always ready to complete his mission with style and efficiency.",
                    style: poppinsRegular(fontSize: 15),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    "But Sarfaraj doesn't need 'Q' for his gadgets and gizmos. He is a creative problem-solver who always brings a touch of humour to every project he works on. He's a master of Flutter and SocialEngine PHP ninja, able to tackle any coding challenge with the same ease as Tom Cruise in Mission Impossible.",
                    style: poppinsRegular(fontSize: 15),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    "When he's not saving the world from lousy coding and development, he's sharing his tech expertise with the world, writing blog posts and speaking at events. He can spin the Web like a tech version of Spider-Man (without the latex suit). His passion for technology and commitment to excellence, Sarfaraj, is the perfect addition to any team needing a highly skilled and dedicated software developer. Get ready to be on the winning team with MD Sarfaraj on your side.",
                    style: poppinsRegular(fontSize: 15),
                  ),
                  const SizedBox(height: 10),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: width * 0.45,
                  height: 300,
                  padding: const EdgeInsets.fromLTRB(80, 20, 80, 20),
                  decoration: const BoxDecoration(
                    color: ThemeColor.lightEggBlueColor,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'A quick overview',
                        style: poppinsBold(
                            fontSize: 35, color: ThemeColor.primaryAppColor),
                      ),
                      Text(
                        '3+ years of experience',
                        style: poppinsRegular(),
                      )
                    ],
                  ),
                ),
                Container(
                  width: width * 0.55,
                  height: 300,
                  decoration: const BoxDecoration(
                    color: ThemeColor.lightEggBlueColor,
                  ),
                  padding: const EdgeInsets.fromLTRB(80, 20, 80, 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ListTile(
                        leading: const CircleAvatar(
                          backgroundImage: AssetImage(ImgRes.absyz),
                        ),
                        title: Text(
                          'Mobile Application Developer',
                          style: poppinsMedium(fontSize: 14),
                        ),
                        subtitle: Text(
                          'ABSYZ Inc, Oct 2022 - Present',
                          style: poppinsRegular(
                              fontSize: 12,
                              color: ThemeColor.secondaryDarkGrey),
                        ),
                      ),
                      ListTile(
                        leading: const CircleAvatar(
                          backgroundImage: AssetImage(ImgRes.intechnique),
                        ),
                        title: Text(
                          'Senior Software Developer',
                          style: poppinsMedium(fontSize: 14),
                        ),
                        subtitle: Text(
                          'Intechnique Limited, Apr 2021 - Sept 2022',
                          style: poppinsRegular(
                              fontSize: 12,
                              color: ThemeColor.secondaryDarkGrey),
                        ),
                      ),
                      ListTile(
                        leading: const CircleAvatar(
                          backgroundImage: AssetImage(ImgRes.fn),
                        ),
                        title: Text(
                          'Software Developer',
                          style: poppinsMedium(fontSize: 14),
                        ),
                        subtitle: Text(
                          'Floating Numbers Digital Solutions, Aug 2019 - Feb 2021',
                          style: poppinsRegular(
                              fontSize: 12,
                              color: ThemeColor.secondaryDarkGrey),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Container(
              width: width,
              height: 280,
              padding: const EdgeInsets.fromLTRB(80, 20, 80, 0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Skills',
                    style: poppinsBold(
                      fontSize: 35,
                      color: ThemeColor.primaryAppColor,
                    ),
                  ),
                  const SizedBox(height: 20),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.fromLTRB(15, 10, 15, 10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SvgPicture.asset(
                                SvgRes.flutter,
                                width: 100,
                                height: 100,
                              ),
                              const SizedBox(height: 5),
                              Text(
                                'Flutter',
                                style: poppinsBold(),
                              )
                            ],
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.fromLTRB(15, 10, 15, 10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SvgPicture.asset(
                                SvgRes.dart,
                                width: 100,
                                height: 100,
                              ),
                              const SizedBox(height: 5),
                              Text(
                                'Dart',
                                style: poppinsBold(),
                              )
                            ],
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.fromLTRB(15, 10, 15, 10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SvgPicture.asset(
                                SvgRes.javascript,
                                width: 100,
                                height: 100,
                              ),
                              const SizedBox(height: 5),
                              Text(
                                'JavaScript',
                                style: poppinsBold(),
                              )
                            ],
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.fromLTRB(15, 10, 15, 10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SvgPicture.asset(
                                SvgRes.php,
                                width: 100,
                                height: 100,
                              ),
                              const SizedBox(height: 5),
                              Text(
                                'PHP',
                                style: poppinsBold(),
                              )
                            ],
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.fromLTRB(15, 10, 15, 10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SvgPicture.asset(
                                SvgRes.laravel,
                                width: 100,
                                height: 100,
                              ),
                              const SizedBox(height: 5),
                              Text(
                                'Laravel',
                                style: poppinsBold(),
                              )
                            ],
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.fromLTRB(15, 10, 15, 10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SvgPicture.asset(
                                SvgRes.codeigniter,
                                width: 100,
                                height: 100,
                              ),
                              const SizedBox(height: 5),
                              Text(
                                'Codeigniter',
                                style: poppinsBold(),
                              )
                            ],
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.fromLTRB(15, 10, 15, 10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SvgPicture.asset(
                                SvgRes.git,
                                width: 100,
                                height: 100,
                              ),
                              const SizedBox(height: 5),
                              Text(
                                'Git',
                                style: poppinsBold(),
                              )
                            ],
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.fromLTRB(15, 10, 15, 10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SvgPicture.asset(
                                SvgRes.firebase,
                                width: 100,
                                height: 100,
                              ),
                              const SizedBox(height: 5),
                              Text(
                                'Firebase',
                                style: poppinsBold(),
                              )
                            ],
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.fromLTRB(15, 10, 15, 10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SvgPicture.asset(
                                SvgRes.mysql,
                                width: 100,
                                height: 100,
                              ),
                              const SizedBox(height: 5),
                              Text(
                                'MySQL',
                                style: poppinsBold(),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              width: width,
              padding: const EdgeInsets.fromLTRB(80, 20, 80, 30),
              decoration: const BoxDecoration(
                color: ThemeColor.lightEggBlueColor,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Blogs",
                    style: poppinsBold(
                      fontSize: 35,
                      color: ThemeColor.primaryAppColor,
                    ),
                  ),
                  const SizedBox(height: 20),
                  SizedBox(
                    height: 360,
                    child: ListView.separated(
                      shrinkWrap: true,
                      physics: const ClampingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      itemCount: blogs.length,
                      itemBuilder: (context, index) {
                        return Container(
                          width: 280,
                          decoration: BoxDecoration(
                            color: ThemeColor.white,
                            borderRadius: BorderRadius.circular(4.0),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                children: [
                                  ClipRRect(
                                    child: Image.network(
                                      blogs[index].image.toString(),
                                      height: 160,
                                      fit: BoxFit.fill,
                                    ),
                                    borderRadius: const BorderRadius.only(
                                        topLeft: Radius.circular(4.0),
                                        topRight: Radius.circular(4.0)),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Text(
                                      blogs[index].title.toString(),
                                      style: poppinsBold(fontSize: 14),
                                    ),
                                  ),
                                  Container(
                                    padding: const EdgeInsets.fromLTRB(
                                        10, 0, 10, 10),
                                    child: Text(
                                      blogs[index].body.toString(),
                                      style: poppinsRegular(fontSize: 12),
                                      maxLines: 4,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                ],
                              ),
                              Align(
                                child: InkWell(
                                  child: Padding(
                                    child: Text(
                                      'Read more.',
                                      style: poppinsBold(
                                        fontSize: 12,
                                        color: ThemeColor.primaryAppColor,
                                      ),
                                    ),
                                    padding: EdgeInsets.fromLTRB(0, 0, 10, 10),
                                  ),
                                  onTap: () {
                                    Launcher.launchURL(
                                        link: blogs[index].url.toString());
                                  },
                                ),
                                alignment: Alignment.bottomRight,
                              )
                            ],
                          ),
                        );
                      },
                      separatorBuilder: (context, index) {
                        return SizedBox(width: 20);
                      },
                    ),
                  )
                ],
              ),
            ),
            Container(
              width: width,
              height: 280,
              decoration: const BoxDecoration(color: ThemeColor.primaryBlack),
              padding: const EdgeInsets.fromLTRB(80, 20, 80, 0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "How about we link up?",
                        style: poppinsBold(
                          fontSize: 35,
                          color: ThemeColor.white,
                        ),
                      ),
                      RichText(
                        text: TextSpan(children: [
                          TextSpan(
                            text: 'Feel free to send me an email at ',
                            style: poppinsMedium(
                              color: ThemeColor.white,
                              fontSize: 15,
                            ),
                          ),
                          TextSpan(
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                Launcher.openMail(
                                    link: 'yoursocialmd@gmail.com');
                              },
                            text: 'yourmdsarfaraj@gmail.com',
                            style: poppinsMedium(
                              color: ThemeColor.primaryAppColor,
                              fontSize: 15,
                            ),
                          ),
                        ]),
                      )
                    ],
                  ),
                  Container(
                    alignment: Alignment.bottomRight,
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: RichText(
                        text: TextSpan(children: [
                          TextSpan(
                              text: 'Design & built by ',
                              style: poppinsRegular(
                                fontSize: 14,
                                color: ThemeColor.white,
                              )),
                          TextSpan(
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                Launcher.launchURL(link: csharpcornerURL);
                              },
                            text: username,
                            style: shantellSansMedium(
                              fontSize: 14,
                              color: ThemeColor.primaryAppColor,
                            ),
                          )
                        ]),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Mobile extends StatefulWidget {
  const Mobile({Key? key}) : super(key: key);

  @override
  State<Mobile> createState() => _MobileState();
}

class _MobileState extends State<Mobile> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: ThemeColor.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: width,
              height: height,
              decoration: const BoxDecoration(
                color: ThemeColor.primaryAppColor,
              ),
              padding: const EdgeInsets.only(top: 5),
              child: Stack(
                alignment: Alignment.topCenter,
                fit: StackFit.loose,
                children: [
                  Padding(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          child: Text(
                            username,
                            style: shantellSansMedium(color: ThemeColor.white),
                          ),
                          onTap: () {
                            Launcher.launchURL(link: csharpcornerURL);
                          },
                        ),
                        Container(
                          width: width * 0.6,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              InkWell(
                                child: SvgPicture.asset(
                                  SvgRes.csharpcorner,
                                  width: 45,
                                  height: 45,
                                  color: ThemeColor.white,
                                ),
                                onTap: () {
                                  Launcher.launchURL(
                                    link: csharpcornerURL,
                                  );
                                },
                              ),
                              InkWell(
                                child: SvgPicture.asset(
                                  SvgRes.linkedIn,
                                  width: 30,
                                  height: 30,
                                  color: ThemeColor.white,
                                ),
                                onTap: () {
                                  Launcher.launchURL(link: linkedInURL);
                                },
                              ),
                              InkWell(
                                child: SvgPicture.asset(
                                  SvgRes.github,
                                  width: 30,
                                  height: 30,
                                  color: ThemeColor.white,
                                ),
                                onTap: () {
                                  Launcher.launchURL(link: githubURL);
                                },
                              ),
                              InkWell(
                                child: SvgPicture.asset(
                                  SvgRes.twitter,
                                  width: 30,
                                  height: 30,
                                  color: ThemeColor.white,
                                ),
                                onTap: () {
                                  Launcher.launchURL(link: twitterURL);
                                },
                              ),
                              InkWell(
                                child: SvgPicture.asset(
                                  SvgRes.instagram,
                                  width: 30,
                                  height: 30,
                                  color: ThemeColor.white,
                                ),
                                onTap: () {
                                  Launcher.launchURL(link: instagramURL);
                                },
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    padding: const EdgeInsets.only(left: 20, right: 10),
                  ),
                  Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          children: [
                            const CircleAvatar(
                              backgroundImage: AssetImage(ImgRes.mdsarfaraj),
                              radius: 150,
                            ),
                            const SizedBox(height: 30),
                            RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: "Hi, I'm ",
                                    style: poppinsBold(
                                      fontSize: 30,
                                      color: ThemeColor.white,
                                    ),
                                  ),
                                  TextSpan(
                                    text: username,
                                    style: shantellSansMedium(
                                      fontSize: 35,
                                      color: ThemeColor.white,
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Text(
                              "Flutter Developer & Tech Blogger",
                              softWrap: true,
                              style: poppinsMedium(
                                fontSize: 16,
                                color: ThemeColor.white,
                              ),
                            ),
                            const SizedBox(height: 20),
                            InkWell(
                              onTap: () {
                                Launcher.launchURL(link: resumeURL);
                              },
                              child: Container(
                                width: 180,
                                padding: const EdgeInsets.all(10.0),
                                decoration: BoxDecoration(
                                  color: ThemeColor.white,
                                  borderRadius: BorderRadius.circular(4.0),
                                ),
                                child: Text(
                                  'Download Resume',
                                  textAlign: TextAlign.center,
                                  style: poppinsMedium(
                                    fontSize: 12,
                                    color: ThemeColor.primaryAppColor,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(height: 20),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: width,
              decoration: const BoxDecoration(
                color: ThemeColor.white,
              ),
              padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Readme.',
                    style: poppinsBold(
                        fontSize: 30, color: ThemeColor.primaryAppColor),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    "MD Sarfaraj, the international man of software development, is no mystery, as he brings over 3+ years of top-secret tech experience. With expertise to code in Flutter, Dart, SocialEngine, PHP Frameworks (Laravel & CodeIgniter), Firebase, and MySQL, he's the tech world's equivalent of James Bond, always ready to complete his mission with style and efficiency.",
                    style: poppinsRegular(fontSize: 15),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    "But Sarfaraj doesn't need 'Q' for his gadgets and gizmos. He is a creative problem-solver who always brings a touch of humour to every project he works on. He's a master of Flutter and SocialEngine PHP ninja, able to tackle any coding challenge with the same ease as Tom Cruise in Mission Impossible.",
                    style: poppinsRegular(fontSize: 15),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    "When he's not saving the world from lousy coding and development, he's sharing his tech expertise with the world, writing blog posts and speaking at events. He can spin the Web like a tech version of Spider-Man (without the latex suit). His passion for technology and commitment to excellence, Sarfaraj, is the perfect addition to any team needing a highly skilled and dedicated software developer. Get ready to be on the winning team with MD Sarfaraj on your side.",
                    style: poppinsRegular(fontSize: 15),
                  ),
                  const SizedBox(height: 10),
                ],
              ),
            ),
            Container(
              width: width,
              decoration: const BoxDecoration(
                color: ThemeColor.lightEggBlueColor,
              ),
              padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'A quick overview.',
                    style: poppinsBold(
                      fontSize: 30,
                      color: ThemeColor.primaryAppColor,
                    ),
                  ),
                  Text(
                    '3+ years of experience',
                    style: poppinsRegular(),
                  ),
                  const SizedBox(height: 10),
                  Column(
                    children: [
                      ListTile(
                        leading: const CircleAvatar(
                          backgroundImage: AssetImage(ImgRes.absyz),
                        ),
                        title: Text(
                          'Mobile Application Developer',
                          style: poppinsMedium(fontSize: 14),
                        ),
                        subtitle: Text(
                          'ABSYZ Inc, Oct 2022 - Present',
                          style: poppinsRegular(
                              fontSize: 12,
                              color: ThemeColor.secondaryDarkGrey),
                        ),
                        contentPadding: EdgeInsets.zero,
                      ),
                      ListTile(
                        leading: const CircleAvatar(
                          backgroundImage: AssetImage(ImgRes.intechnique),
                        ),
                        title: Text(
                          'Senior Software Developer',
                          style: poppinsMedium(fontSize: 14),
                        ),
                        subtitle: Text(
                          'Intechnique Limited, Apr 2021 - Sept 2022',
                          style: poppinsRegular(
                              fontSize: 12,
                              color: ThemeColor.secondaryDarkGrey),
                        ),
                        contentPadding: EdgeInsets.zero,
                      ),
                      ListTile(
                        leading: const CircleAvatar(
                          backgroundImage: AssetImage(ImgRes.fn),
                        ),
                        title: Text(
                          'Software Developer',
                          style: poppinsMedium(fontSize: 14),
                        ),
                        subtitle: Text(
                          'Floating Numbers Digital Solutions, Aug 2019 - Feb 2021',
                          style: poppinsRegular(
                              fontSize: 12,
                              color: ThemeColor.secondaryDarkGrey),
                        ),
                        contentPadding: EdgeInsets.zero,
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Skills',
                    style: poppinsBold(
                      fontSize: 30,
                      color: ThemeColor.primaryAppColor,
                    ),
                  ),
                  const SizedBox(height: 20),
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SvgPicture.asset(
                                SvgRes.flutter,
                                width: 100,
                                height: 100,
                              ),
                              const SizedBox(height: 5),
                              Text(
                                'Flutter',
                                style: poppinsBold(),
                              )
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              SvgPicture.asset(
                                SvgRes.dart,
                                width: 100,
                                height: 100,
                              ),
                              const SizedBox(height: 5),
                              Text(
                                'Dart',
                                style: poppinsBold(),
                              )
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SvgPicture.asset(
                                SvgRes.javascript,
                                width: 100,
                                height: 100,
                              ),
                              const SizedBox(height: 5),
                              Text(
                                'JavaScript',
                                style: poppinsBold(),
                              )
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SvgPicture.asset(
                                SvgRes.php,
                                width: 100,
                                height: 100,
                              ),
                              const SizedBox(height: 5),
                              Text(
                                'PHP',
                                style: poppinsBold(),
                              )
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SvgPicture.asset(
                                SvgRes.laravel,
                                width: 100,
                                height: 100,
                              ),
                              const SizedBox(height: 5),
                              Text(
                                'Laravel',
                                style: poppinsBold(),
                              )
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SvgPicture.asset(
                                SvgRes.codeigniter,
                                width: 100,
                                height: 100,
                              ),
                              const SizedBox(height: 5),
                              Text(
                                'Codeigniter',
                                style: poppinsBold(),
                              )
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SvgPicture.asset(
                                SvgRes.git,
                                width: 100,
                                height: 100,
                              ),
                              const SizedBox(height: 5),
                              Text(
                                'Git',
                                style: poppinsBold(),
                              )
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SvgPicture.asset(
                                SvgRes.firebase,
                                width: 100,
                                height: 100,
                              ),
                              const SizedBox(height: 5),
                              Text(
                                'Firebase',
                                style: poppinsBold(),
                              )
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(
                            SvgRes.mysql,
                            width: 100,
                            height: 100,
                          ),
                          Text(
                            'MySQL',
                            style: poppinsBold(),
                          )
                        ],
                      ),
                      const SizedBox(height: 10),
                    ],
                  )
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
              decoration: const BoxDecoration(
                color: ThemeColor.lightEggBlueColor,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Blogs",
                    style: poppinsBold(
                      fontSize: 30,
                      color: ThemeColor.primaryAppColor,
                    ),
                  ),
                  ListView.builder(
                    shrinkWrap: true,
                    padding: const EdgeInsets.only(top: 10, bottom: 10),
                    physics: const ScrollPhysics(),
                    itemCount: blogs.length,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: const EdgeInsets.fromLTRB(25, 10, 25, 10),
                        decoration: BoxDecoration(
                          color: ThemeColor.white,
                          borderRadius: BorderRadius.circular(4.0),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                ClipRRect(
                                  child: Image.network(
                                    blogs[index].image.toString(),
                                    height: 180,
                                    fit: BoxFit.fill,
                                  ),
                                  borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(4.0),
                                      topRight: Radius.circular(4.0)),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Text(
                                    blogs[index].title.toString(),
                                    style: poppinsBold(fontSize: 14),
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                                Container(
                                  padding:
                                      const EdgeInsets.fromLTRB(10, 0, 10, 10),
                                  child: Text(
                                    blogs[index].body.toString(),
                                    style: poppinsRegular(fontSize: 12),
                                    maxLines: 4,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                              ],
                            ),
                            Align(
                              child: InkWell(
                                child: Padding(
                                  child: Text(
                                    'Read more.',
                                    style: poppinsBold(
                                      fontSize: 12,
                                      color: ThemeColor.primaryAppColor,
                                    ),
                                  ),
                                  padding:
                                      const EdgeInsets.fromLTRB(0, 0, 10, 10),
                                ),
                                onTap: () {
                                  Launcher.launchURL(
                                      link: blogs[index].url.toString());
                                },
                              ),
                              alignment: Alignment.bottomRight,
                            )
                          ],
                        ),
                      );
                    },
                  )
                ],
              ),
            ),
            Container(
              width: width,
              padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
              height: 250,
              decoration: const BoxDecoration(
                color: ThemeColor.primaryBlack,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 10),
                      Text(
                        "How about we link up?",
                        style: poppinsBold(
                          fontSize: 25,
                          color: ThemeColor.white,
                        ),
                      ),
                      Text(
                        'Feel free to send me an email at',
                        style: poppinsMedium(
                          color: ThemeColor.white,
                          fontSize: 15,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Launcher.openMail(link: emailID);
                        },
                        child: Text(
                          emailID,
                          style: poppinsMedium(
                            color: ThemeColor.primaryAppColor,
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    alignment: Alignment.center,
                    padding: const EdgeInsets.only(bottom: 20),
                    child: RichText(
                      text: TextSpan(children: [
                        TextSpan(
                            text: 'Design & built by ',
                            style: poppinsRegular(
                              fontSize: 14,
                              color: ThemeColor.white,
                            )),
                        TextSpan(
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              Launcher.launchURL(link: csharpcornerURL);
                            },
                          text: username,
                          style: shantellSansMedium(
                              color: ThemeColor.primaryAppColor),
                        )
                      ]),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
