import 'package:flutter/material.dart';
import 'package:furniture_app_flutter/constants/Constants.data.dart';
import 'package:furniture_app_flutter/models/product.model.dart';
import 'package:furniture_app_flutter/screen/details/components/chat_and_add_to_cart.component.dart';
import 'package:furniture_app_flutter/screen/details/components/list_of_color.component.dart';
import 'package:furniture_app_flutter/screen/details/components/product_image.component.dart';

class Body extends StatelessWidget {
  final Product product;
  const Body({Key key, this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SafeArea(
      bottom: false,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
              decoration: BoxDecoration(
                  color: kBackgroundColor,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(50),
                      bottomRight: Radius.circular(50))),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Hero(
                      tag: '${product.id}',
                      child: ProductImage(
                        size: size,
                        image: product.image,
                      ),
                    ),
                  ),
                  ListOfColor(),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: kDefaultPadding / 2),
                    child: Text(
                      product.title,
                      style: Theme.of(context).textTheme.headline6,
                    ),
                  ),
                  Text(
                    '\$${product.price}',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: kSecondaryColor,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: kDefaultPadding / 2),
                    child: Text(
                      product.description,
                      style: TextStyle(color: kTextLightColor),
                    ),
                  ),
                  SizedBox(
                    height: kDefaultPadding,
                  )
                ],
              ),
            ),
            ChatAndAddToCart()
          ],
        ),
      ),
    );
  }
}
