import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:travelokals/utils/BestRatedImage.dart';
import 'package:travelokals/utils/Buttons.dart';
import 'package:travelokals/utils/CitiesImage.dart';
import 'package:travelokals/utils/RecommendationImage.dart';
import 'package:travelokals/utils/TextStyles.dart';
import 'package:travelokals/utils/consts.dart';
import 'package:travelokals/utils/imageContainer.dart';

import 'OverViewScreen.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            ImageContainer(),

            Padding(
              padding: const EdgeInsets.only(left:16.0,right: 16.0,bottom: 16.0),

              child: Column(children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(bottom: 16.0),
                  child: Align(
                      alignment: Alignment.centerLeft,
                      child: BoldText("Daily Offers", 20.0, kblack)),
                ),
                Container(
                  width: 330,
                  height: 150,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      buildContainer(),
                      SizedBox(
                        width: 20,
                      ),
                      buildContainer(),
                      SizedBox(
                        width: 20,
                      ),
                      buildContainer(),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      BoldText("Recommended for you", 20.0, kblack),
                      SizedBox(
                        width: 60,
                      ),
                      BoldText("More", 15.0, korange),
                      Icon(
                        Icons.navigate_next,
                        color: korange,
                      )
                    ],
                  ),
                ),
                Container(
                  width: 400,
                  height: 200,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      RecommendationImage("assets/Hotel-Cianjur.jpg", "Hotel Cianjur", "Cianjur"),
                      RecommendationImage("assets/aston.jpg", "Aston Puncak", "Cianjur"),
                      RecommendationImage("assets/ibis.jpg", "Ibis", "Bogor"),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only( top: 10,bottom: 16.0),
                  child: Align(
                      alignment: Alignment.centerLeft,
                      child: BoldText("Best Rated Places", 20.0, kblack)),
                ),
                 Container(
                    width: 400,
                    height: 250,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        BestRatedImage(
                            "assets/aston.jpg", "ASTON PUNCAK", "Cianjur", 4.5),
                        BestRatedImage(
                            "assets/Hotel-Cianjur.jpg", "HOTEL CIANJUR", "Cianjur", 4.8),
                        BestRatedImage("assets/ibis.jpg", "Ibis", "Bogor", 3.1),
                      ],

                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10,bottom: 16.0),
                  child: Align(
                      alignment: Alignment.centerLeft,
                      child: BoldText("Awesome Place", 20.0, kblack)),
                ),
                Row(
                  children: <Widget>[
                    CitiesImage("assets/bumiaki.png","RM BUMI AKI"),
                    SizedBox(width: 28,),
                    CitiesImage("assets/mandalawangi.jpg","MANDALAWANGI"),

                  ],
                ),
                SizedBox(height: 28,),
                  Row(
                    children: <Widget>[
                      CitiesImage("assets/ggede.jpg","GUNUNG GEDE"),
                      SizedBox(width: 28,),

                      CitiesImage("assets/venice.jpg","LITTLE VENICE"),

                    ],

                ),

              ]),
            ),
          ],
        ),
      ),
    );
  }



  Widget buildContainer() {
    return GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (_) {
          return OverViewPage();
        }));
      },
      child: Container(
        width: 320,
        height: 50,
        child: Container(
            width: 300,
            height: 150,
            decoration: BoxDecoration(
                color: Colors.grey.shade50,
                borderRadius: BorderRadius.circular(15.0)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Container(
                  width: 150,
                  height: 150,
                  child: ClipRRect(
                      borderRadius: new BorderRadius.only(
                          topLeft: Radius.circular(15),
                          bottomLeft: Radius.circular(15)),
                      child: Image.asset(
                        "assets/hotel-Cianjur.jpg",
                        fit: BoxFit.fitHeight,
                      )),
                ),
                SizedBox(
                  width: 10.0,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    BoldText("Hotel Cianjur", 20.5, kblack),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        BoldText("5 Stars", 15.0, korangelite),
                        Icon(
                          Icons.location_on,
                          color: kgreyDark,
                          size: 15.0,
                        ),
                        NormalText("Cianjur", kgreyDark, 15.0)
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          width: 50.0,
                          decoration: BoxDecoration(
                            color: korange,
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Icon(
                                Icons.star,
                                color: kwhite,
                                size: 15.0,
                              ),
                              BoldText("4.5", 15.0, kwhite)
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        NormalText("(1024 Reviews)", kgreyDark, 11.0),
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    BoldText("Book& Save 30% !", 14.0, Colors.red),
                    SizedBox(height: 14),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        SizedBox(
                          width: 90,
                        ),
                        BoldText("More", 12.0, kblack),
                        Icon(
                          Icons.navigate_next,
                          size: 15.0,
                        ),
                      ],
                    )
                  ],
                )
              ],
            )),
      ),
    );
  }

  Row imagesRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        SquaredIcon(Icons.airplanemode_active, "Flights"),
        SquaredIcon(FontAwesomeIcons.hotel, "Hotels"),
        SquaredIcon(Icons.directions_car, "Cars"),
      ],
    );
  }
}
