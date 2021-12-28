enum Categoria {
  todo,
  accesorios,
  ropa,
  casa,
}

class Producto {
  const Producto({
    required this.categoria,
    required this.id,
    required this.sePresenta,
    required this.nombre,
    required this.precio,
    // this.categoria,
    // this.id,
    // this.sePresenta,
    // this.nombre,
    // this.precio,
  });

  final Categoria categoria;
  final int id;
  final bool sePresenta;
  final String nombre;
  final int precio;

  String get assetnombre => '$id-0.jpg';
  String get assetPackage => 'shrine_images';

  @override
  String toString() => "$nombre (id=$id)";
}
