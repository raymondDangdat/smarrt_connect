import 'package:flutter/material.dart';

AppBar header(BuildContext context, {bool isAppTitle = false, String titleText, removeBackButton = false}) {
  return AppBar(
    automaticallyImplyLeading: removeBackButton ? false : true,
    title: Text( isAppTitle ?
      "SmartConnect" : titleText,
    style: TextStyle(
      color: Colors.white,
      fontFamily: isAppTitle ? "Signatra" : "",
      fontSize: isAppTitle ? 50.0 : 22.0),
      overflow: TextOverflow.ellipsis,
    ),

    centerTitle: true,
    backgroundColor: Theme.of(context).accentColor,
  );
}
