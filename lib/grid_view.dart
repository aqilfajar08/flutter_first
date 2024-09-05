import 'package:flutter/material.dart';

class productPage extends StatelessWidget {
  productPage({super.key});

  List<Product> myProductPage = [
    Product(
      name: 'Tesla Model Isriwil',
      price: '13.000.000',
      imageURL:
          'img/shoes.jpg',
    ),
    Product(
      name: 'Tesla Model Isriwil',
      price: '13.000.000',
      imageURL:
          'img/shoes.jpg',
    ),
    Product(
      name: 'Tesla Model Isriwil',
      price: '13.000.000',
      imageURL:
          'img/shoes.jpg',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Product Page'),
      ),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          childAspectRatio: 3/4,
        ),
        itemCount: myProductPage.length,
        itemBuilder: (context, index) {
          return ProductItem(product: myProductPage[index]
          );
        },
      ),
    );
  }
}

class ProductItem extends StatelessWidget {
  final Product product;
  
  const ProductItem({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Image.asset(
              '${product.imageURL}',
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Text(
              '${product.name}',
              style: const TextStyle(color: Colors.black,),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Text(
              'Rp ${product.price}',
              style: const TextStyle(color: Colors.black),
            ),
          ),
        ],
      ),
    );
  }
}

class Product {
  late String? name;
  late String? price;
  late String? imageURL;

  // pemanggilan
  Product({this.name, this.price, this.imageURL});
}
