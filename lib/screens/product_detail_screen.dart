import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/products.dart';

class ProductDetailScreen extends StatelessWidget {
  static const routeName = '/product-detail';

  @override
  Widget build(BuildContext context) {
    //productId that is pushed from the ProductItem object on tap
    final productId = ModalRoute.of(context).settings.arguments as String;

    //productData that is obtained by the Provider
    final productData = Provider.of<Products>(context);
    final loadedProduct = productData.findById(productId);

    return Scaffold(
      appBar: AppBar(
        title: Text(loadedProduct.title), // replace with dynamic title
      ),
    );
  }
}
