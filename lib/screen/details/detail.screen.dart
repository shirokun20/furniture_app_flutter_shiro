import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:furniture_app_flutter/constants/Constants.data.dart';
import 'package:furniture_app_flutter/models/product.model.dart';
import 'package:furniture_app_flutter/screen/details/components/body.component.dart';

class DetailScreen extends StatelessWidget {
  //
  const DetailScreen({
    Key key,
    this.product,
  });
  //
  final Product product;
  //
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: buildAppBar(context),
      body: Body(
        product: product,
      ),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      brightness: Brightness.light,
      backgroundColor: kBackgroundColor,
      elevation: 0,
      leading: IconButton(
        padding: EdgeInsets.only(
          left: kDefaultPadding,
        ),
        icon: SvgPicture.asset('assets/icons/back.svg'),
        onPressed: () => Navigator.pop(context),
      ),
      centerTitle: false,
      title: Text(
        'Back'.toUpperCase(),
        style: Theme.of(context).textTheme.bodyText2,
      ),
      actions: [
        IconButton(
          icon: SvgPicture.asset('assets/icons/cart_with_item.svg'),
          onPressed: () {},
        )
      ],
    );
  }
}
