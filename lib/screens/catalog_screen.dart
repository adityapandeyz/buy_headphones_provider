import 'package:buy_headphones_provider/screens/cart_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/headphone_provider.dart';

class CatalogScreen extends StatelessWidget {
  const CatalogScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var headphones = context.watch<HeadphoneProvider>().headphones;
    var cartList = context.watch<HeadphoneProvider>().cartList;

    return Scaffold(
      appBar: AppBar(
        title: const Text('BuyHeadphones'),
        actions: [
          IconButton(
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => const CartScreen(),
              ),
            ),
            icon: const Icon(
              Icons.shopping_cart,
            ),
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: headphones.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(
                headphones[index].imgUrl,
              ),
            ),
            title: Text(headphones[index].name),
            subtitle: Text(headphones[index].brand),
            trailing: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: cartList.contains(headphones[index])
                      ? Colors.red
                      : Colors.green,
                ),
                child: Text(
                  ' ₹ ${headphones[index].price}',
                  style: const TextStyle(
                    color: Colors.white,
                  ),
                ),
                onPressed: () {
                  context
                      .read<HeadphoneProvider>()
                      .addToCart(headphones[index]);
                }),
          );
        },
      ),
    );
  }
}
