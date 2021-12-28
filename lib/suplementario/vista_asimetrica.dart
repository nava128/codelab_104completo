import 'package:flutter/material.dart';

import '../modelo/cls_producto.dart';
import 'columnas_producto.dart';

class AsymmetricView extends StatelessWidget {
  final List<Producto> productos;

  const AsymmetricView({Key? key, required this.productos}) : super(key: key);

  List<Widget> _buildColumns(BuildContext context) {
    if (productos.isEmpty) {
      return <Container>[];
    }

    return List.generate(_listItemCount(productos.length), (int index) {
      double width = .59 * MediaQuery.of(context).size.width;
      Widget column;
      if (index % 2 == 0) {
        /// Even cases
        int bottom = _evenCasesIndex(index);
        column = TwoProductCardColumn(bottom: productos[bottom], top: productos.length - 1 >= bottom + 1 ? productos[bottom + 1] : null);
        width += 32.0;
      } else {
        /// Odd cases
        column = OneProductCardColumn(
          producto: productos[_oddCasesIndex(index)],
        );
      }
      return SizedBox(
        width: width,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: column,
        ),
      );
    }).toList();
  }

  int _evenCasesIndex(int input) {
    /// The operator ~/ is a cool one. It's the truncating division operator. It
    /// divides the number and if there's a remainder / decimal, it cuts it off.
    /// This is like dividing and then casting the result to int. Also, it's
    /// functionally equivalent to floor() in this case.
    return input ~/ 2 * 3;
  }

  int _oddCasesIndex(int input) {
    assert(input > 0);
    return (input / 2).ceil() * 3 - 1;
  }

  int _listItemCount(int totalItems) {
    if (totalItems % 3 == 0) {
      return totalItems ~/ 3 * 2;
    } else {
      return (totalItems / 3).ceil() * 2 - 1;
    }
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      padding: const EdgeInsets.fromLTRB(0.0, 34.0, 16.0, 44.0),
      children: _buildColumns(context),
    );
  }
}
