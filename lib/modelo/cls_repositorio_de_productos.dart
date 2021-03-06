import 'cls_producto.dart';

class ProductsRepository {
  static List<Producto> loadProducts(Categoria categoria) {
    const todos_los_Productos = <Producto>[
      Producto(
        categoria: Categoria.accesorios,
        id: 0,
        sePresenta: true,
        nombre: 'Vagabond sack',
        precio: 120,
      ),
      Producto(
        categoria: Categoria.accesorios,
        id: 1,
        sePresenta: true,
        nombre: 'Stella sunglasses',
        precio: 58,
      ),
      Producto(
        categoria: Categoria.accesorios,
        id: 2,
        sePresenta: false,
        nombre: 'Whitney belt',
        precio: 35,
      ),
      Producto(
        categoria: Categoria.accesorios,
        id: 3,
        sePresenta: true,
        nombre: 'Garden strand',
        precio: 98,
      ),
      Producto(
        categoria: Categoria.accesorios,
        id: 4,
        sePresenta: false,
        nombre: 'Strut earrings',
        precio: 34,
      ),
      Producto(
        categoria: Categoria.accesorios,
        id: 5,
        sePresenta: false,
        nombre: 'Varsity socks',
        precio: 12,
      ),
      Producto(
        categoria: Categoria.accesorios,
        id: 6,
        sePresenta: false,
        nombre: 'Weave keyring',
        precio: 16,
      ),
      Producto(
        categoria: Categoria.accesorios,
        id: 7,
        sePresenta: true,
        nombre: 'Gatsby hat',
        precio: 40,
      ),
      Producto(
        categoria: Categoria.accesorios,
        id: 8,
        sePresenta: true,
        nombre: 'Shrug bag',
        precio: 198,
      ),
      Producto(
        categoria: Categoria.casa,
        id: 9,
        sePresenta: true,
        nombre: 'Gilt desk trio',
        precio: 58,
      ),
      Producto(
        categoria: Categoria.casa,
        id: 10,
        sePresenta: false,
        nombre: 'Copper wire rack',
        precio: 18,
      ),
      Producto(
        categoria: Categoria.casa,
        id: 11,
        sePresenta: false,
        nombre: 'Soothe ceramic set',
        precio: 28,
      ),
      Producto(
        categoria: Categoria.casa,
        id: 12,
        sePresenta: false,
        nombre: 'Hurrahs tea set',
        precio: 34,
      ),
      Producto(
        categoria: Categoria.casa,
        id: 13,
        sePresenta: true,
        nombre: 'Blue stone mug',
        precio: 18,
      ),
      Producto(
        categoria: Categoria.casa,
        id: 14,
        sePresenta: true,
        nombre: 'Rainwater tray',
        precio: 27,
      ),
      Producto(
        categoria: Categoria.casa,
        id: 15,
        sePresenta: true,
        nombre: 'Chambray napkins',
        precio: 16,
      ),
      Producto(
        categoria: Categoria.casa,
        id: 16,
        sePresenta: true,
        nombre: 'Succulent planters',
        precio: 16,
      ),
      Producto(
        categoria: Categoria.casa,
        id: 17,
        sePresenta: false,
        nombre: 'Quartet table',
        precio: 175,
      ),
      Producto(
        categoria: Categoria.casa,
        id: 18,
        sePresenta: true,
        nombre: 'Kitchen quattro',
        precio: 129,
      ),
      Producto(
        categoria: Categoria.ropa,
        id: 19,
        sePresenta: false,
        nombre: 'Clay sweater',
        precio: 48,
      ),
      Producto(
        categoria: Categoria.ropa,
        id: 20,
        sePresenta: false,
        nombre: 'Sea tunic',
        precio: 45,
      ),
      Producto(
        categoria: Categoria.ropa,
        id: 21,
        sePresenta: false,
        nombre: 'Plaster tunic',
        precio: 38,
      ),
      Producto(
        categoria: Categoria.ropa,
        id: 22,
        sePresenta: false,
        nombre: 'White pinstripe shirt',
        precio: 70,
      ),
      Producto(
        categoria: Categoria.ropa,
        id: 23,
        sePresenta: false,
        nombre: 'Chambray shirt',
        precio: 70,
      ),
      Producto(
        categoria: Categoria.ropa,
        id: 24,
        sePresenta: true,
        nombre: 'Seabreeze sweater',
        precio: 60,
      ),
      Producto(
        categoria: Categoria.ropa,
        id: 25,
        sePresenta: false,
        nombre: 'Gentry jacket',
        precio: 178,
      ),
      Producto(
        categoria: Categoria.ropa,
        id: 26,
        sePresenta: false,
        nombre: 'Navy trousers',
        precio: 74,
      ),
      Producto(
        categoria: Categoria.ropa,
        id: 27,
        sePresenta: true,
        nombre: 'Walter henley (white)',
        precio: 38,
      ),
      Producto(
        categoria: Categoria.ropa,
        id: 28,
        sePresenta: true,
        nombre: 'Surf and perf shirt',
        precio: 48,
      ),
      Producto(
        categoria: Categoria.ropa,
        id: 29,
        sePresenta: true,
        nombre: 'Ginger scarf',
        precio: 98,
      ),
      Producto(
        categoria: Categoria.ropa,
        id: 30,
        sePresenta: true,
        nombre: 'Ramona crossover',
        precio: 68,
      ),
      Producto(
        categoria: Categoria.ropa,
        id: 31,
        sePresenta: false,
        nombre: 'Chambray shirt',
        precio: 38,
      ),
      Producto(
        categoria: Categoria.ropa,
        id: 32,
        sePresenta: false,
        nombre: 'Classic white collar',
        precio: 58,
      ),
      Producto(
        categoria: Categoria.ropa,
        id: 33,
        sePresenta: true,
        nombre: 'Cerise scallop tee',
        precio: 42,
      ),
      Producto(
        categoria: Categoria.ropa,
        id: 34,
        sePresenta: false,
        nombre: 'Shoulder rolls tee',
        precio: 27,
      ),
      Producto(
        categoria: Categoria.ropa,
        id: 35,
        sePresenta: false,
        nombre: 'Grey slouch tank',
        precio: 24,
      ),
      Producto(
        categoria: Categoria.ropa,
        id: 36,
        sePresenta: false,
        nombre: 'Sunshirt dress',
        precio: 58,
      ),
      Producto(
        categoria: Categoria.ropa,
        id: 37,
        sePresenta: true,
        nombre: 'Fine lines tee',
        precio: 58,
      ),
    ];
    if (categoria == Categoria.todo) {
      return todos_los_Productos;
    } else {
      return todos_los_Productos.where((Producto p) {
        return p.categoria == categoria;
      }).toList();
    }
  }
}
