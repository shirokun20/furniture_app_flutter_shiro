import 'package:flutter/material.dart';
import 'package:furniture_app_flutter/Constants/Constants.data.dart';
import 'package:furniture_app_flutter/screen/details/components/color_dot.component.dart';

class ListOfColor extends StatelessWidget {
  //
  const ListOfColor({
    Key key,
  }) : super(key: key);
  //
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ColorDot(
            fillColor: Color(0xFF80989A),
            isSelected: true,
          ),
          ColorDot(
            fillColor: Color(0xFFFF5200),
          ),
          ColorDot(
            fillColor: kPrimaryColor,
          ),
        ],
      ),
    );
  }
}
