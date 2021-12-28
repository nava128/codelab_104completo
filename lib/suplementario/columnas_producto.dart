import 'package:flutter/material.dart';

import '../modelo/cls_producto.dart';
import 'tarjeta_del_producto.dart';

class TwoProductCardColumn extends StatelessWidget {
  const TwoProductCardColumn({
    //required this.bottom,
    required this.bottom,
    required this.top,
    //Key? key,
    Key? key,
  }) : super(key: key);

  final Producto bottom;
  //final Product? top;
  final Producto top;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (BuildContext context, BoxConstraints constraints) {
      const spacerHeight = 44.0;

      double heightOfCards = (constraints.biggest.height - spacerHeight) / 2.0;
      double heightOfImages = heightOfCards - Tarjeta_del_Producto.kTextBoxHeight;
      // TODO: Change imageAspectRatio calculation (104)
      double imageAspectRatio = constraints.biggest.width / heightOfImages;

      // TODO: Replace Column with a ListView (104)
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: const EdgeInsetsDirectional.only(start: 28.0),
            child: top != null
                ? Tarjeta_del_Producto(
                    imageAspectRatio: imageAspectRatio,
                    producto: top,
                  )
                : SizedBox(
                    height: heightOfCards,
                  ),
          ),
          const SizedBox(height: spacerHeight),
          Padding(
            padding: const EdgeInsetsDirectional.only(end: 28.0),
            child: Tarjeta_del_Producto(
              imageAspectRatio: imageAspectRatio,
              producto: bottom,
            ),
          ),
        ],
      );
    });
  }
}

class OneProductCardColumn extends StatelessWidget {
  const OneProductCardColumn({required this.producto, Key? key}) : super(key: key);

  final Producto producto;

  @override
  Widget build(BuildContext context) {
    // TODO: Replace Column with a ListView (104)
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        Tarjeta_del_Producto(
          producto: producto,
        ),
        const SizedBox(
          height: 40.0,
        ),
      ],
    );
  }
}
