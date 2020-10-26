import 'package:flutter/material.dart';
import 'package:furniture_app_flutter/components/search_box.component.dart';
import 'package:furniture_app_flutter/constants/Constants.data.dart';
import 'package:furniture_app_flutter/models/product.model.dart';
import 'package:furniture_app_flutter/screen/details/detail.screen.dart';
import 'category.component.dart';
import 'product.components.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Column(
        children: [
          SearchBox(),
          CategoryList(),
          SizedBox(
            height: kDefaultPadding / 2,
          ),
          Expanded(
            child: Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(
                    top: 70,
                  ),
                  decoration: BoxDecoration(
                      color: kBackgroundColor,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40),
                      )),
                ),
                ListView.builder(
                  itemCount: products.length,
                  itemBuilder: (context, index) => ProductCard(
                    itemIndex: index,
                    product: products[index],
                    press: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => DetailScreen(
                                  product: products[index],
                                ))),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
