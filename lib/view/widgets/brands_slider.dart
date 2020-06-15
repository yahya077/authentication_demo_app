
import 'package:authenticationdemoapp/core/models/car_make.dart';
import 'package:flutter/material.dart';

class BrandsSlider extends StatelessWidget {
/*  BrandsSlider(this.models);

 final List<CarMake> models;*/

  @override
  Widget build(BuildContext context) {
    /*print(models.length);*/
    return Container(
      margin: EdgeInsets.only(left: 25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(left: 8),
            child: Text("Markalar", style: TextStyle(fontSize: 22, fontFamily: "Prompt"),),
          ),
          SizedBox(height: 10,),
/*          Container(
            height: 100,
            width: MediaQuery.of(context).size.width,
            child: ListView.builder(
              itemCount: models.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: ((c,i){
                return Container(
                  margin: EdgeInsets.only(right: 20),
                  child: Column(
                    children: <Widget>[
                      Container(
                        height: 70,
                        width: 70,
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Color(0xffF6F6F6),
                        ),
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              image: DecorationImage(image: NetworkImage(models[i].path))
                          ),
                        ),
                      ),
                      SizedBox(height: 5,),
                      Text(models[i].title, style: TextStyle(fontFamily: "Prompt"),),
                    ],
                  ),
                );
              }),
            ),
          )*/
        ],
      ),
    );
  }
}
