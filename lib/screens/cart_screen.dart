import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/headphone_provider.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var cartList = context.watch<HeadphoneProvider>().cartList;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Cart'),
      ),
      body: cartList.isEmpty
          ? const Center(
              child: Text('Empty Cart!'),
            )
          : ListView(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: Text('You have ${cartList.length} items.'),
                ),
                for (var pair in cartList)
                  ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(
                        pair.imgUrl,
                      ),
                    ),
                    title: Text(pair.name),
                    subtitle: Text(pair.brand),
                    trailing: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.red,
                      ),
                      onPressed: () => context
                          .read<HeadphoneProvider>()
                          .removeFromCart(pair),
                      child: Text(
                        ' ₹ ${pair.price}',
                        style: const TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
              ],
            ),
    );
  }
}
