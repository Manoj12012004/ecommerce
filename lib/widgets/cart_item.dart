import 'package:ecommerce/models/cart.dart';
import 'package:ecommerce/providers/cart.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';

class CartItemW extends StatelessWidget {
  final CartItem cartItem;
  const CartItemW(this.cartItem, {super.key});

  @override
  Widget build(BuildContext context) {
    final cartProvider = Provider.of<CartProvider>(context, listen: false);
    return ListTile(
      leading: Image.network(cartItem.product.image, width: 50, height: 50),
      title: Text(
        cartItem.product.title,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
      ),
      subtitle: Text("Quantity:${cartItem.quantity}"),
      trailing: IconButton(
        icon: Icon(Icons.remove_circle_outline),
        onPressed: () {
          cartProvider.removeItem(cartItem.product.id.toString());
        },
      ),
    );
  }
}
