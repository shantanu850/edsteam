import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyProfile(),
    );
  }
}

class MyProfile extends StatefulWidget {
  const MyProfile({Key? key}) : super(key: key);

  @override
  State<MyProfile> createState() => _MyProfileState();
}

class Kolors {
  static const Color text = Color(0xff353D65);
  static const Color subtitle = Color(0xff767C9C);
  static const Color socialLinksBg = Color(0xFF6ED3DF);
  static const Color liteBackground = Color(0xFFECF2F8);
}


class _MyProfileState extends State<MyProfile> {
  final scaffodKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      key: scaffodKey,
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        toolbarHeight: 70,
        leading: GestureDetector(
            onTap: ()=>scaffodKey.currentState!.openDrawer(),
            child: Image.asset('assets/menu.png')),
        actions: [
          Container(
            padding: const EdgeInsets.symmetric(vertical: 10),
            width: 90,
            child: Stack(
              children: const [
                CircleAvatar(
                  radius: 20,
                  backgroundImage: AssetImage('assets/men_2.png'),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 30.0),
                  child: CircleAvatar(
                    radius: 22,
                    backgroundColor: Colors.white,
                    child: CircleAvatar(
                      radius: 20,
                      backgroundImage: AssetImage('assets/men_2.png'),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
        bottom: const PreferredSize(
          preferredSize: Size(100, 8),
          child: Text("Trinity Mar Thoma Church, Houston",
              style: TextStyle(
                  color: Kolors.subtitle,
                  fontSize: 16,
                  fontWeight: FontWeight.bold)),
        ),
        title: Column(
          children: [
            Image.asset('assets/logo.png'),
          ],
        ),
      ),
      drawer: Theme(
          data: Theme.of(context).copyWith(
            // Set the transparency here
            canvasColor: Colors
                .transparent, //or any other color you want. e.g Colors.blue.withOpacity(0.5)
          ),
          child: SafeArea(
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(18),
                    bottomRight: Radius.circular(18),
                ),
              ),
              child: Drawer(
                elevation: 0,
                child: ListView(
                  children: [
                    const SizedBox(height: 20),
                    Center(child: Image.asset('assets/logo.png',height: 50)),
                    const SizedBox(height: 8),
                    const Center(
                      child: Text("Trinity Mar Thoma Church, Houston",
                          style: TextStyle(
                              color: Kolors.subtitle,
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                          ),
                      ),
                    ),
                    const SizedBox(height: 12),
                    SizedBox(
                      height: 250,
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const SizedBox(height: 25),
                              const CircleAvatar(
                                radius: 70,
                                backgroundImage: AssetImage('assets/men.png'),
                              ),
                              const SizedBox(height: 12),
                              Text("Abraham Thomas",
                                  style: GoogleFonts.playfairDisplay(
                                      color: Kolors.text,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 22)),
                              const SizedBox(height: 8),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Text("Peral Land East",
                                      style: TextStyle(
                                          color: Kolors.subtitle,
                                          fontWeight: FontWeight.normal)),
                                  const SizedBox(width: 12),
                                  RotatedBox(
                                      quarterTurns: -1,
                                      child: Container(
                                          height: 8, width: 8, color: Kolors.subtitle)),
                                  const SizedBox(width: 12),
                                  const Text("#567833",
                                      style: TextStyle(
                                          color: Kolors.subtitle,
                                          fontWeight: FontWeight.normal)),
                                  const SizedBox(width: 12),
                                  RotatedBox(
                                      quarterTurns: -1,
                                      child: Container(
                                          height: 8, width: 8, color: Kolors.subtitle)),
                                  const SizedBox(width: 12),
                                  const Text("Male",
                                      style: TextStyle(
                                          color: Kolors.subtitle,
                                          fontWeight: FontWeight.normal)),
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Card(
                          color: Kolors.socialLinksBg,
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          child: const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Icon(FontAwesomeIcons.twitter, color: Colors.white),
                          ),
                        ),
                        Card(
                          color: Kolors.socialLinksBg,
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          child: const Padding(
                            padding: EdgeInsets.all(8.0),
                            child:
                            Icon(FontAwesomeIcons.linkedinIn, color: Colors.white),
                          ),
                        ),
                        Card(
                          color: Kolors.socialLinksBg,
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          child: const Padding(
                            padding: EdgeInsets.all(8.0),
                            child:
                            Icon(FontAwesomeIcons.facebookF, color: Colors.white),
                          ),
                        ),
                        Card(
                          color: Kolors.socialLinksBg,
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          child: const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Icon(FontAwesomeIcons.whatsapp, color: Colors.white),
                          ),
                        ),
                        Card(
                          color: Kolors.socialLinksBg,
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          child: const Padding(
                            padding: EdgeInsets.all(8.0),
                            child:
                            Icon(FontAwesomeIcons.googlePlusG, color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 40),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 18.0),
                          child: Image.asset('assets/profile.png',height: 30),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    const Divider(indent: 20,endIndent: 20,),
                    const SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 18.0),
                      child: Row(
                        children: [
                          Image.asset('assets/edit.png',height: 30),
                          const SizedBox(width: 10),
                          Text("Edit Profile",style: GoogleFonts.playfairDisplay(color: Kolors.text))
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
      ),
      body: Container(
        decoration: BoxDecoration(
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(25), topRight: Radius.circular(25)),
            border: Border.all(color: Colors.grey.shade200, width: 2)),
        child: ListView(
          children: [
            SizedBox(
              height: 250,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0, right: 20),
                    child: Align(
                      alignment: Alignment.topRight,
                      child: IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.edit, color: Colors.red)),
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(height: 25),
                      const CircleAvatar(
                        radius: 70,
                        backgroundImage: AssetImage('assets/men.png'),
                      ),
                      const SizedBox(height: 20),
                      Text("Abraham Thomas",
                          style: GoogleFonts.playfairDisplay(
                              color: Kolors.text,
                              fontWeight: FontWeight.bold,
                              fontSize: 24)),
                      const SizedBox(height: 8),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text("Peral Land East",
                              style: TextStyle(
                                  color: Kolors.subtitle,
                                  fontWeight: FontWeight.normal)),
                          const SizedBox(width: 18),
                          RotatedBox(
                              quarterTurns: -1,
                              child: Container(
                                  height: 8, width: 8, color: Kolors.subtitle)),
                          const SizedBox(width: 18),
                          const Text("#567833",
                              style: TextStyle(
                                  color: Kolors.subtitle,
                                  fontWeight: FontWeight.normal)),
                          const SizedBox(width: 18),
                          RotatedBox(
                              quarterTurns: -1,
                              child: Container(
                                  height: 8, width: 8, color: Kolors.subtitle)),
                          const SizedBox(width: 18),
                          const Text("Male",
                              style: TextStyle(
                                  color: Kolors.subtitle,
                                  fontWeight: FontWeight.normal)),
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Card(
                  color: Kolors.socialLinksBg,
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Icon(FontAwesomeIcons.twitter, color: Colors.white),
                  ),
                ),
                Card(
                  color: Kolors.socialLinksBg,
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child:
                        Icon(FontAwesomeIcons.linkedinIn, color: Colors.white),
                  ),
                ),
                Card(
                  color: Kolors.socialLinksBg,
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child:
                        Icon(FontAwesomeIcons.facebookF, color: Colors.white),
                  ),
                ),
                Card(
                  color: Kolors.socialLinksBg,
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Icon(FontAwesomeIcons.whatsapp, color: Colors.white),
                  ),
                ),
                Card(
                  color: Kolors.socialLinksBg,
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child:
                        Icon(FontAwesomeIcons.googlePlusG, color: Colors.white),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: (size.width * 0.5) - 20,
                    height: 70,
                    padding: const EdgeInsets.symmetric(horizontal: 6),
                    decoration: BoxDecoration(
                        borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(18),
                            bottomLeft: Radius.circular(18)),
                        border: Border.all(color: Kolors.subtitle)),
                    child: Row(
                      children: [
                        Card(
                          color: Kolors.socialLinksBg,
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25)),
                          child: const Padding(
                            padding: EdgeInsets.all(4.0),
                            child: Icon(FontAwesomeIcons.locationDot,
                                color: Colors.white, size: 20),
                          ),
                        ),
                        const SizedBox(width: 5),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Address",
                                style: GoogleFonts.playfairDisplay()),
                            Text("601 Lakeland Tarrece",
                                style:
                                    GoogleFonts.playfairDisplay(fontSize: 12))
                          ],
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: (size.width * 0.5) - 20,
                    height: 70,
                    padding: const EdgeInsets.symmetric(horizontal: 6),
                    decoration: BoxDecoration(
                        borderRadius: const BorderRadius.only(
                            topRight: Radius.circular(18),
                            bottomRight: Radius.circular(18)),
                        border: Border.all(color: Kolors.subtitle)),
                    child: Row(
                      children: [
                        Card(
                          color: Kolors.socialLinksBg,
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25)),
                          child: const Padding(
                            padding: EdgeInsets.all(7.0),
                            child: Icon(FontAwesomeIcons.phone,
                                color: Colors.white, size: 15),
                          ),
                        ),
                        const SizedBox(width: 5),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Phone Number",
                                style: GoogleFonts.playfairDisplay()),
                            Text("91 6456584156",
                                style:
                                    GoogleFonts.playfairDisplay(fontSize: 12))
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Container(
              height: 210,
              width: size.width,
              decoration: const BoxDecoration(
                  borderRadius:
                      BorderRadius.only(bottomLeft: Radius.circular(35)),
                  color: Kolors.liteBackground),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 12.0, top: 12.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "My Households",
                          style: GoogleFonts.playfairDisplay(
                              color: Kolors.text,
                              fontSize: 17,
                              fontWeight: FontWeight.w600),
                        ),
                        const SizedBox(height: 4),
                        Container(
                          width: 15,
                          height: 4,
                          color: Colors.red,
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 160,
                    child: Row(
                      //padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      //scrollDirection: Axis.horizontal,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const CircleAvatar(
                                radius: 45,
                                backgroundImage:
                                    AssetImage('assets/women_1.png'),
                              ),
                              const SizedBox(height: 10),
                              Text("Rachel Thomas",
                                  style: GoogleFonts.playfairDisplay(
                                      color: Kolors.text,
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold)),
                              Text("Wife",
                                  style: GoogleFonts.playfairDisplay(
                                      color: Kolors.subtitle, fontSize: 12))
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const CircleAvatar(
                                radius: 45,
                                backgroundImage:
                                    AssetImage('assets/women_2.png'),
                              ),
                              const SizedBox(height: 10),
                              Text("Aby Thomas",
                                  style: GoogleFonts.playfairDisplay(
                                      color: Kolors.text,
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold)),
                              Text("Sister",
                                  style: GoogleFonts.playfairDisplay(
                                      color: Kolors.subtitle, fontSize: 12))
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const CircleAvatar(
                                radius: 45,
                                backgroundImage: AssetImage('assets/men_2.png'),
                              ),
                              const SizedBox(height: 10),
                              Text("Aby Thomas",
                                  style: GoogleFonts.playfairDisplay(
                                      color: Kolors.text,
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold)),
                              Text("Brother",
                                  style: GoogleFonts.playfairDisplay(
                                      color: Kolors.subtitle, fontSize: 12))
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            //const SizedBox(height: 20),
            Container(
              height: 230,
              width: size.width,
              decoration: const BoxDecoration(
                borderRadius:
                    BorderRadius.only(bottomLeft: Radius.circular(35)),
                //color: Kolors.liteBackground
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 12.0, top: 12.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              "Birthday",
                              style: GoogleFonts.playfairDisplay(
                                  color: Kolors.text,
                                  fontSize: 17,
                                  fontWeight: FontWeight.w600),
                            ),
                            const SizedBox(width: 20),
                            Text(
                              "Wedding Anniversary",
                              style: GoogleFonts.playfairDisplay(
                                  color: Kolors.text.withOpacity(0.3),
                                  fontSize: 17,
                                  fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                        const SizedBox(height: 3),
                        Container(
                          width: 15,
                          height: 4,
                          color: Colors.red,
                        )
                      ],
                    ),
                  ),
                  CarouselSlider(
                    options:
                        CarouselOptions(height: 100.0, viewportFraction: 0.67),
                    items: [1, 2, 3].map((i) {
                      return Builder(
                        builder: (BuildContext context) {
                          return SizedBox(
                            child: Row(
                              //padding: const EdgeInsets.symmetric(horizontal: 8.0),
                              //scrollDirection: Axis.horizontal,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                  //height: 80,
                                  width: 265,
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      SizedBox(
                                        height: 90,
                                        width: 85,
                                        child: Stack(
                                          children: [
                                            const Padding(
                                              padding:
                                                  EdgeInsets.only(top: 8.0),
                                              child: CircleAvatar(
                                                radius: 38,
                                                backgroundImage: AssetImage(
                                                    'assets/women_2.png'),
                                              ),
                                            ),
                                            Align(
                                              alignment: Alignment.topLeft,
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.end,
                                                children: const [
                                                  CircleAvatar(
                                                    radius: 18,
                                                    backgroundColor:
                                                        Colors.white,
                                                    child: CircleAvatar(
                                                        backgroundColor: Kolors
                                                            .socialLinksBg,
                                                        radius: 14,
                                                        child: Icon(
                                                            FontAwesomeIcons
                                                                .hatWizard,
                                                            color: Colors.white,
                                                            size: 14)),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      const SizedBox(width: 8),
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text("Aby Thomas",
                                              style:
                                                  GoogleFonts.playfairDisplay(
                                                      color: Kolors.text,
                                                      fontSize: 20,
                                                      fontWeight:
                                                          FontWeight.bold)),
                                          Text("Feb 25 2021, Monday",
                                              style:
                                                  GoogleFonts.playfairDisplay(
                                                      color: Kolors.subtitle,
                                                      fontSize: 13))
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      );
                    }).toList(),
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
