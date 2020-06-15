import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Commons {
  static const mainAppColor = const Color(0xFF4D0F29);
  static const popupItemBackColor = const Color(0xFFDADADB);


  static Widget mainLoader() {
    return Center(child: SpinKitFadingGrid(
      itemBuilder: (BuildContext context, int index) {
        return DecoratedBox(
          decoration: BoxDecoration(
            color: index.isEven ? Color(0xFF2E2E2E) : Color(0xFFcecece),
          ),
        );
      },
    ));
  }

  static Widget mainLoading(String message) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Padding(padding: EdgeInsets.all(18), child: Text(message)),
          mainLoader(),
        ],
      );
  }

}