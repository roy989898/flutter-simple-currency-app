import 'package:flutter/material.dart';

import '../colors.dart';

class CButton extends StatelessWidget {
  String keyIn = "";
  void Function(String) onTap = null;

  CButton({@required this.keyIn, this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (onTap != null) {
          onTap(keyIn);
        }
      },
      child: Container(
        child: Center(
          child: Text(
            keyIn,
            style: TextStyle(
              fontSize: 40,
              color: gary,
            ),
          ),
        ),
      ),
    );
  }
}
