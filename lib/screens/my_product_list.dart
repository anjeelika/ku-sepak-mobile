import 'package:flutter/material.dart';
import 'package:ku_sepak/models/product.dart';
import 'package:ku_sepak/widgets/product_card.dart';
import 'package:provider/provider.dart';
import 'package:pbp_django_auth/pbp_django_auth.dart';

class MyProductListPage extends StatefulWidget {
  const MyProductListPage({super.key});

  @override
  State<MyProductListPage> createState() => _MyProductListPageState();
}

class _MyProductListPageState extends State<MyProductListPage> {
  Future<List<Product>> fetchMyProducts(CookieRequest request) async {
    final response = await request.get(
      "http://localhost:8000/products-flutter/", 
    );

    List<Product> products = [];
    for (var d in response) {
      if (d != null) {
        products.add(Product.fromJson(d));
      }
    }
    return products;
  }

  @override
  Widget build(BuildContext context) {
    final request = context.watch<CookieRequest>();

    return Scaffold(
      appBar: AppBar(
        title: const Text("My Products"),
        backgroundColor: Colors.amber,
      ),
      body: FutureBuilder(
        future: fetchMyProducts(request),
        builder: (context, AsyncSnapshot snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          }

          if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return const Center(
              child: Text(
                "You haven't created any products yet.",
                style: TextStyle(fontSize: 18, color: Colors.black45),
              ),
            );
          }

          return ListView.builder(
            itemCount: snapshot.data!.length,
            itemBuilder: (_, index) => ProductCard(
              p: snapshot.data![index],
              onTap: () {},
            ),
          );
        },
      ),
    );
  }
}
