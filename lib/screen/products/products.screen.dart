import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:furniture_app_flutter/constants/Constants.data.dart';
import 'package:furniture_app_flutter/screen/products/components/body.component.dart';

class ProductsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: buildAppBar(),
      body: Body(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      elevation: 0,
      title: Text('Dashboard'),
      centerTitle: false,
      actions: [
        IconButton(
          onPressed: () {},
          icon: SvgPicture.asset('assets/icons/notification.svg'),
        )
      ],
    );
  }
}
