import 'package:flutter/material.dart';

Padding ButtonWidget({@required Function toScreen, Color color, String label}) {
  return Padding(
    padding: EdgeInsets.symmetric(vertical: 16.0),
    child: Material(
      elevation: 5.0,
      color: color,
      borderRadius: BorderRadius.circular(30.0),
      child: MaterialButton(
        onPressed: toScreen,
        minWidth: 200.0,
        height: 42.0,
        child: Text(
          label,
        ),
      ),
    ),
  );
}
