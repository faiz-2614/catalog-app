import 'package:catalog_app/models/catalog.dart';
import 'package:catalog_app/widgets/themes.dart';
import 'package:flutter/material.dart';

import 'package:velocity_x/velocity_x.dart';

class HomeDetailPage extends StatelessWidget {
  final Item catalog;
  const HomeDetailPage({Key? key, required this.catalog})
      : assert(catalog != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      bottomNavigationBar: Container(
        color: context.theme.accentColor,
        child: ButtonBar(
          buttonPadding: EdgeInsets.zero,
          alignment: MainAxisAlignment.spaceBetween,
          children: [
            "\$${catalog.price}"
                .text
                .bold
                .color(context.theme.buttonColor)
                .xl4
                .make(),
            ElevatedButton(
              onPressed: () {},
              child: "Add To Cart".text.make(),
              style: ButtonStyle(
                  shape: MaterialStateProperty.all(StadiumBorder())),
            ).wh(150, 50),
          ],
        ).p32(),
      ),
      backgroundColor: context.canvasColor,
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            Hero(
                    tag: Key(catalog.id.toString()),
                    child: Image.network(catalog.image))
                .h32(context),
            Expanded(
                child: VxArc(
              height: 30.0,
              arcType: VxArcType.CONVEY,
              edge: VxEdge.TOP,
              child: Container(
                width: context.screenWidth,
                color: context.theme.accentColor,
                child: Column(
                  children: [
                    catalog.name.text.xl4.bold
                        .color(context.canvasColor)
                        .make(),
                    catalog.desc.text.xl.color(context.canvasColor).make(),
                    2.heightBox,
                    "Sadipsci ameed. Gubergren sed elitr tempor lorem at tempor sed ipsum, dolor est est est dolor stet kasd et dolores dolor. Voluptua gubergren invidunt dolor sed tempor, kasd clita et sit erat."
                        .text
                        .color(context.canvasColor)
                        .make()
                        .p16()
                  ],
                ).py64(),
              ),
            ))
          ],
        ),
      ),
    );
  }
}
