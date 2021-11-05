import 'package:flutter/material.dart';
import 'dart:io';

class AdaptativeButton extends StatelessWidget {
  final String? label;
  final Function? onPressed;
  const AdaptativeButton({this.label, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Platform.isIOS
        ? AdaptativeButton(
            label: label,
            onPressed: onPressed,
            // padding: EdgeInsets.symmetric(horizontal:horizontal: 20, )
            
          )
        : ElevatedButton(
            onPressed: null,
            child: Text('$label'),
          );
  }
}
