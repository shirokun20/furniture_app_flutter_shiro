import 'package:flutter/material.dart';
import 'package:furniture_app_flutter/constants/Constants.data.dart';

class ProductImage extends StatelessWidget {
  final Size size;
  final String image;

  const ProductImage({Key key, @required this.size, this.image})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(vertical: kDefaultPadding),
        height: size.width * 0.8,
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Container(
              height: size.width * 0.7,
              width: size.width * 0.7,
              decoration:
                  BoxDecoration(color: Colors.white, shape: BoxShape.circle),
            ),
            Image.asset(
              image,
              height: size.width * 0.75,
              width: size.width * 0.75,
              fit: BoxFit.cover,
            )
          ],
        ));
  }
}
