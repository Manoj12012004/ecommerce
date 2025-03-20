import 'package:ecommerce/providers/cart.dart';
import 'package:ecommerce/widgets/cart_item.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Cart extends StatelessWidget {
  const Cart({super.key});

  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<CartProvider>(context);
    final cartItems = cart.cartItems;

    return Scaffold(
      appBar: AppBar(title: Text('Cart')),
      body:
          cartItems.isEmpty
              ? Center(child: Text('No items in the cart'))
              : ListView.builder(
                itemCount: cartItems.length,
                itemBuilder: (ctx, i) => CartItemW(cartItems[i]),
              ),
    );
  }
}
