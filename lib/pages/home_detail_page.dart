// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_catalog/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';

import '../models/catalog.dart';

class HomeDetailPage extends StatelessWidget {
  final Item catalog;
  const HomeDetailPage({
    Key? key,
    required this.catalog,
  })  : assert(catalog != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
        ),
        backgroundColor: MyTheme.creamColor,
        bottomNavigationBar: Container(
          color: Colors.white,
          child: ButtonBar(
            alignment: MainAxisAlignment.spaceBetween,
            buttonPadding: EdgeInsets.zero,
            children: [
              "\$${catalog.price}".text.bold.red800.xl4.make(),
              ElevatedButton(
                onPressed: () {},
                child: "Add to cart".text.make(),
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(MyTheme.darkBluishColor),
                    shape: MaterialStateProperty.all(StadiumBorder())),
              ).wh(120, 50)
            ],
          ).p24(),
        ),
        body: Column(children: [
          Hero(
                  tag: Key(catalog.id.toString()),
                  child: Image.network(catalog.image))
              .h32(context),
          Expanded(
            child: VxArc(
              height: 30,
              arcType: VxArcType.CONVEY,
              edge: VxEdge.TOP,
              child: Container(
                color: Colors.white,
                width: context.screenWidth,
                child: Column(
                  children: [
                    catalog.name.text.xl4
                        .color(MyTheme.darkBluishColor)
                        .bold
                        .make(),
                    catalog.desc.text
                        .textStyle(context.captionStyle)
                        .xl
                        .center
                        .make(),
                    10.heightBox,
                    "Diam diam at dolores sed sanctus diam, ea stet accusam dolor gubergren tempor sadipscing voluptua, et et dolor magna elitr."
                        .text
                        .textStyle(context.captionStyle)
                        .make()
                        .p16()
                  ],
                ).p64(),
              ),
            ),
          )
        ]).centered(),
      ),
    );
  }
}