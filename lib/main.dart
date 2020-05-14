import 'package:corona/constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: Icon(
            Icons.menu,
            color: Colors.black87,
          ),
          actions: <Widget>[
            IconButton(
              onPressed: () {},
              icon: Icon(
                FontAwesomeIcons.bell,
                color: Colors.black,
              ),
            ),
          ],
          elevation: 0.0,
          backgroundColor: Colors.white,
        ),
        body: Padding(
          padding: const EdgeInsets.only(left: 15.0, right: 15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Covid-19',
                style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.w400,
                    color: Colors.black87),
              ),
              SizedBox(
                height: 5.0,
              ),
              Text(
                'Virus Tracking',
                style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 2.0),
              ),
              SizedBox(
                height: 10.0,
              ),
              Stack(
                children: <Widget>[
                  Container(
                    height: 200.0,
                    decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        color: Color(0xFF003D64),
                        borderRadius: BorderRadius.circular(20.0),
                        boxShadow: <BoxShadow>[
                          BoxShadow(
                              color: Colors.black45,
                              offset: Offset(0.0, 10.0),
                              blurRadius: 10.0)
                        ]),
                  ),
                  Container(
                    alignment: FractionalOffset.centerRight,
                    child: Image(
                      image: AssetImage(
                        'images/Picture2.png',
                      ),
                      height: 200,
                      width: 190,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0, top: 30.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'What To Do',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 24.0,
                              fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Text(
                          'if You Are Sick ?',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20.0,
                              fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          height: 25.0,
                        ),
                        Container(
                          height: 40.0,
                          width: 150.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Color(0xFF00578D),
                          ),
                          child: Center(
                            child: RichText(
                              text: TextSpan(
                                text: 'Learn More',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                                children: [
                                  WidgetSpan(
                                    child: Icon(
                                      Icons.arrow_forward,
                                      color: Colors.white,
                                    ),
                                    alignment: PlaceholderAlignment.middle,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 25.0,
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    cards(

                      colour: Color(0xFFE44E4F),
                      img: 'images/wash_hands.png',
                      height: 100,
                      width: 170,
                      title: 'Symptoms &',
                      subtitle: 'Preventions',
                    ),
                    cards(

                      colour: Color(0xFF6674F1),
                      img: 'images/wear_mask.png',
                      height: 100,
                      width: 160,
                      title: ' Prevent ',
                      subtitle: 'Getting Sick',
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    cards(

                      colour: Color(0xFF1A95B6),
                      img: 'images/Picture3.png',
                      height: 120,
                      width: 150,
                      title: 'Symptoms &',
                      subtitle: 'Preventions',
                    ),
                    cards(

                      colour: Color(0xFFE67E49),
                      img: 'images/globe.png',
                      height: 120,
                      width: 160,
                      title: ' Prevent ',
                      subtitle: 'Getting Sick',
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
