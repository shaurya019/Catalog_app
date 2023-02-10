import 'package:features/models/cart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import '../../models/catalog.dart';


class AddToCart extends StatefulWidget{
  final Item catalog;
  const AddToCart( {
    super.key, required this.catalog,});

  @override
  State<AddToCart> createState() => _AddToCartState();
}

class _AddToCartState extends State<AddToCart> {
  final _cart = CartModel();
  @override
  Widget build(BuildContext context) {
    bool isInCart = _cart.items.contains(widget.catalog) ?? false;
    return ElevatedButton
      (
      onPressed: () {
        isInCart = isInCart.toggle();
        if(!isInCart){
          final _catalog = CatalogModel();
          final _cart = CartModel();
          _cart.catalog = _catalog;
          _cart.add(widget.catalog);
          setState(() {
          });
        }
      },
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(
            context.theme.buttonColor),
        shape : MaterialStateProperty.all(
          StadiumBorder(),
        ),
      ),
      child: isInCart ? Icon(Icons.done) : "Buy".text.make(),
    );
  }
}
