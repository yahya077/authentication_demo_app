import 'package:flutter/material.dart';

class MainCategoriesBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 200,
      child: Column(
        children: <Widget>[
          GestureDetector(
            onTap: (){
              print("object");
              Navigator.of(context).pushNamed('/search');
            },
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 5),
              child: Card(
                elevation: 2,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)),
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          GestureDetector(
                            onTap: (){
                              print("object");
                              Navigator.of(context).pushNamed('/search');
                            },
                            child: Container(
                                padding: EdgeInsets.all(2),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color: Color(0xffFECE2C),
                                ),
                                child: Icon(
                                  Icons.home,
                                  color: Color(0xffF6F6F6),
                                  size: 15,
                                )),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            "Emlak",
                            style: TextStyle(
                                fontFamily: "Prompt",
                                fontWeight: FontWeight.w500
                            ),
                          ),
                        ],
                      ),
                      Icon(
                        Icons.play_arrow,
                        color: Colors.black,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 5),
            child: Card(
              elevation: 2,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0)),
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Container(
                            padding: EdgeInsets.all(2),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: Color(0xffFECE2C),
                            ),
                            child: Icon(
                              Icons.directions_car,
                              color: Color(0xffF6F6F6),
                              size: 15,
                            )),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "Vasıta",
                          style: TextStyle(
                              fontFamily: "Prompt",
                              fontWeight: FontWeight.w500
                          ),
                        ),
                      ],
                    ),
                    Icon(
                      Icons.play_arrow,
                      color: Colors.black,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 5),
            child: Card(
              elevation: 2,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0)),
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Container(
                            padding: EdgeInsets.all(2),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: Color(0xffFECE2C),
                            ),
                            child: Icon(
                              Icons.home,
                              color: Color(0xffF6F6F6),
                              size: 15,
                            )),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "İkinci El ve Sıfır Alış-Veriş",
                          style: TextStyle(
                              fontFamily: "Prompt",
                              fontWeight: FontWeight.w500
                          ),
                        ),
                      ],
                    ),
                    Icon(
                      Icons.play_arrow,
                      color: Colors.black,
                    ),
                  ],
                ),
              ),
            ),
          ),

        ],
      ),
    );
  }
}
