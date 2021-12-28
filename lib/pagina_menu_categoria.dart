import 'package:flutter/material.dart';

import 'colores.dart';
import 'modelo/cls_producto.dart';

class CategoryMenuPage extends StatelessWidget {
  final Categoria currentCategory;
  final ValueChanged<Categoria> onCategoryTap;
  final List<Categoria> _categories = Categoria.values;

  const CategoryMenuPage({
    Key? key,
    required this.currentCategory,
    required this.onCategoryTap,
    //Key key,
    //  this.currentCategory,
    //  this.onCategoryTap,
  }) : super(key: key);

  Widget _buildCategory(Categoria category, BuildContext context) {
    final categoryString = category.toString().replaceAll('Category.', '').toUpperCase();
    final ThemeData theme = Theme.of(context);
    return GestureDetector(
      onTap: () => onCategoryTap(category),
      child: category == currentCategory
          ? Column(
              children: <Widget>[
                const SizedBox(height: 16.0),
                Text(
                  categoryString,
                  style: theme.textTheme.bodyText1,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 14.0),
                Container(
                  width: 70.0,
                  height: 2.0,
                  color: kShrinePink400,
                ),
              ],
            )
          : Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: Text(
                categoryString,
                style: theme.textTheme.bodyText1!.copyWith(
                  color: kShrineBrown900.withAlpha(153),
                ),
                textAlign: TextAlign.center,
              ),
            ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: const EdgeInsets.only(top: 40.0),
        color: kShrinePink100,
        child: ListView(children: _categories.map((Categoria c) => _buildCategory(c, context)).toList()),
      ),
    );
  }
}
