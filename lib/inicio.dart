import 'package:flutter/material.dart';

import 'modelo/cls_repositorio_de_productos.dart';
import 'modelo/cls_producto.dart';
import 'suplementario/vista_asimetrica.dart';

class HomePage extends StatelessWidget {
  final Categoria categoria;

  const HomePage({this.categoria = Categoria.todo, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AsymmetricView(productos: ProductsRepository.loadProducts(categoria));
  }
}
