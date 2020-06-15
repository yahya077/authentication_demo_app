import 'package:flutter/material.dart';

class Featured extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return             Container(
      padding: EdgeInsets.only(left: 30),
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                "Öne Çıkanlar",
                style: TextStyle(fontFamily: "Prompt", fontSize: 22),
              ),
              Padding(
                padding: EdgeInsets.only(right: 8),
                child: Row(
                  children: <Widget>[
                    Text(
                      "Tümünü Gör",
                      style: TextStyle(
                          fontFamily: "Prompt",
                          fontSize: 10,
                          color: Colors.black38),
                    ),
                    Icon(
                      Icons.play_arrow,
                      size: 12,
                      color: Colors.black54,
                    ),
                  ],
                ),
              ),
            ],
          ),
          Container(
            height: 170,
            width: MediaQuery.of(context).size.width,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                Card(
                  shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        width: 180,
                        height: 110,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          image: DecorationImage(
                              image: AssetImage(
                                  "assets/images/mercedes-yel.jpg"),
                              fit: BoxFit.cover),
                        ),
                      ),
                      Container(
                        width: 180,
                        padding: EdgeInsets.all(6),
                        child: Column(
                          children: <Widget>[
                            Container(
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Container(
                                      width: 110,
                                      child: Text(
                                        "Sahibinden temiz mustang shelby",
                                        style: TextStyle(
                                            fontSize: 8,
                                            fontFamily: "Prompt"),
                                      )),
                                  Text(
                                    "1.000.000₺",
                                    style: TextStyle(
                                        fontSize: 8,
                                        fontFamily: "Prompt",
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xffFECE2C)),
                                  )
                                ],
                              ),
                            ),
                            Container(
                                alignment: Alignment.bottomRight,
                                child: Text(
                                  "Antalya/Kumluca",
                                  style: TextStyle(
                                      fontFamily: "Prompt",
                                      fontSize: 7,
                                      color: Colors.black26),
                                )),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Card(
                  shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        width: 180,
                        height: 110,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          image: DecorationImage(
                              image: AssetImage(
                                  "assets/images/mustang-red.jpg"),
                              fit: BoxFit.cover),
                        ),
                      ),
                      Container(
                        width: 180,
                        padding: EdgeInsets.all(6),
                        child: Column(
                          children: <Widget>[
                            Container(
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Container(
                                      width: 110,
                                      child: Text(
                                        "Sahibinden temiz mustang shelby",
                                        style: TextStyle(
                                            fontSize: 8,
                                            fontFamily: "Prompt"),
                                      )),
                                  Text(
                                    "1.000.000₺",
                                    style: TextStyle(
                                        fontSize: 8,
                                        fontFamily: "Prompt",
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xffFECE2C)),
                                  )
                                ],
                              ),
                            ),
                            Container(
                                alignment: Alignment.bottomRight,
                                child: Text(
                                  "Antalya/Kumluca",
                                  style: TextStyle(
                                      fontFamily: "Prompt",
                                      fontSize: 7,
                                      color: Colors.black26),
                                )),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Card(
                  shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        width: 180,
                        height: 110,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          image: DecorationImage(
                              image: AssetImage(
                                  "assets/images/mercedes-yel.jpg"),
                              fit: BoxFit.cover),
                        ),
                      ),
                      Container(
                        width: 180,
                        padding: EdgeInsets.all(6),
                        child: Column(
                          children: <Widget>[
                            Container(
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Container(
                                      width: 110,
                                      child: Text(
                                        "Sahibinden temiz mustang shelby",
                                        style: TextStyle(
                                            fontSize: 8,
                                            fontFamily: "Prompt"),
                                      )),
                                  Text(
                                    "1.000.000₺",
                                    style: TextStyle(
                                        fontSize: 8,
                                        fontFamily: "Prompt",
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xffFECE2C)),
                                  )
                                ],
                              ),
                            ),
                            Container(
                                alignment: Alignment.bottomRight,
                                child: Text(
                                  "Antalya/Kumluca",
                                  style: TextStyle(
                                      fontFamily: "Prompt",
                                      fontSize: 7,
                                      color: Colors.black26),
                                )),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Card(
                  shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        width: 180,
                        height: 110,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          image: DecorationImage(
                              image: AssetImage(
                                  "assets/images/mustang-red.jpg"),
                              fit: BoxFit.cover),
                        ),
                      ),
                      Container(
                        width: 180,
                        padding: EdgeInsets.all(6),
                        child: Column(
                          children: <Widget>[
                            Container(
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Container(
                                      width: 110,
                                      child: Text(
                                        "Sahibinden temiz mustang shelby",
                                        style: TextStyle(
                                            fontSize: 8,
                                            fontFamily: "Prompt"),
                                      )),
                                  Text(
                                    "1.000.000₺",
                                    style: TextStyle(
                                        fontSize: 8,
                                        fontFamily: "Prompt",
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xffFECE2C)),
                                  )
                                ],
                              ),
                            ),
                            Container(
                                alignment: Alignment.bottomRight,
                                child: Text(
                                  "Antalya/Kumluca",
                                  style: TextStyle(
                                      fontFamily: "Prompt",
                                      fontSize: 7,
                                      color: Colors.black26),
                                )),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Card(
                  shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        width: 180,
                        height: 110,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          image: DecorationImage(
                              image: AssetImage(
                                  "assets/images/mustang-red.jpg"),
                              fit: BoxFit.cover),
                        ),
                      ),
                      Container(
                        width: 180,
                        padding: EdgeInsets.all(6),
                        child: Column(
                          children: <Widget>[
                            Container(
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Container(
                                      width: 110,
                                      child: Text(
                                        "Sahibinden temiz mustang shelby",
                                        style: TextStyle(
                                            fontSize: 8,
                                            fontFamily: "Prompt"),
                                      )),
                                  Text(
                                    "1.000.000₺",
                                    style: TextStyle(
                                        fontSize: 8,
                                        fontFamily: "Prompt",
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xffFECE2C)),
                                  )
                                ],
                              ),
                            ),
                            Container(
                                alignment: Alignment.bottomRight,
                                child: Text(
                                  "Antalya/Kumluca",
                                  style: TextStyle(
                                      fontFamily: "Prompt",
                                      fontSize: 7,
                                      color: Colors.black26),
                                )),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

              ],
            ),
          ),
        ],
      ),
    );
  }
}
