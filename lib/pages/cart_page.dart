import 'package:flutter/material.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Carrinho"),
      ),
      body: Column(children: [
        Card(
          child: Row(
            children: [
              const Text(
                "Total",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              Chip(
                  backgroundColor: Theme.of(context).primaryColor,
                  label: Text("R\$1000",
                      style: TextStyle(
                        color: Theme.of(context)
                            .primaryTextTheme
                            .headlineMedium
                            ?.color,
                      )))
            ],
          ),
        )
      ]),
    );
  }
}
