import 'package:flutter/material.dart';

import 'fondo.dart';
import 'colores.dart';
import 'inicio.dart';
import 'acceso.dart';
import 'pagina_menu_categoria.dart';
import 'modelo/cls_producto.dart';
import 'suplementario/borde_corte_de_esquinas.dart';

class ShrineApp extends StatefulWidget {
  //const ShrineApp({Key? key}) : super(key: key);
  const ShrineApp({Key? key}) : super(key: key);

  @override
  _ShrineAppState createState() => _ShrineAppState();
}

class _ShrineAppState extends State<ShrineApp> {
  Categoria _currentCategory = Categoria.todo;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shrine',
      home: Backdrop(
        currentCategory: _currentCategory,
        frontLayer: HomePage(categoria: _currentCategory),
        backLayer: CategoryMenuPage(
          currentCategory: _currentCategory,
          onCategoryTap: _onCategoryTap,
        ),
        frontTitle: const Text('SHRINE'),
        backTitle: const Text('MENU'),
      ),
      initialRoute: '/login',
      onGenerateRoute: _getRoute,
      theme: _kShrineTheme,
    );
  }

  /// Function to call when a [Category] is tapped.
  void _onCategoryTap(Categoria category) {
    setState(() {
      _currentCategory = category;
    });
  }
}

Route<dynamic>? _getRoute(RouteSettings settings) {
  if (settings.name != '/login') {
    return null;
  }

  return MaterialPageRoute<void>(
    settings: settings,
    builder: (BuildContext context) => const LoginPage(),
    fullscreenDialog: true,
  );
}

final ThemeData _kShrineTheme = _buildShrineTheme();

ThemeData _buildShrineTheme() {
  final ThemeData base = ThemeData.light();
  return base.copyWith(
    colorScheme: base.colorScheme.copyWith(
      primary: kShrinePink100,
      onPrimary: kShrineBrown900,
      secondary: kShrineBrown900,
      error: kShrineErrorRed,
    ),
    textTheme: _buildShrineTextTheme(base.textTheme),
    textSelectionTheme: const TextSelectionThemeData(
      selectionColor: kShrinePink100,
    ),
    inputDecorationTheme: const InputDecorationTheme(
      focusedBorder: CutCornersBorder(
        borderSide: BorderSide(
          width: 2.0,
          color: kShrineBrown900,
        ),
      ),
      border: CutCornersBorder(),
    ),
  );
}

TextTheme _buildShrineTextTheme(TextTheme base) {
  return base
      .copyWith(
        headline5: base.headline5!.copyWith(
          fontWeight: FontWeight.w500,
        ),
        headline6: base.headline6!.copyWith(
          fontSize: 18.0,
        ),
        caption: base.caption!.copyWith(
          fontWeight: FontWeight.w400,
          fontSize: 14.0,
        ),
        bodyText1: base.bodyText1!.copyWith(
          fontWeight: FontWeight.w500,
          fontSize: 16.0,
        ),
      )
      .apply(
        fontFamily: 'Rubik',
        displayColor: kShrineBrown900,
        bodyColor: kShrineBrown900,
      );
}
