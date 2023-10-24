import 'package:flutter/material.dart';
import 'package:practice_dotlcickapiprovider/Payments/stripe_api.dart';
import 'package:practice_dotlcickapiprovider/Utils/ListProvider.dart';
import 'package:provider/provider.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Consumer<ListProvider>(
      builder: (context, listprovider, child) {
        return Scaffold(
          body: Column(
            children: [
              Row(
                children: [
                  Expanded(
                      child: Container(
                    height: 500,
                    child: ListView.builder(
                      scrollDirection: Axis.vertical,
                      physics: BouncingScrollPhysics(),
                      itemCount: listprovider.image.length,
                      itemBuilder: (context, index) {
                        return ListTile(
                          leading: Image.network(listprovider.image[index]),
                          title: Text(listprovider.title[index]),
                          subtitle: Text(listprovider.price[index].toString()),
                          trailing: IconButton(
                              onPressed: () {
                                listprovider.deleteMethod(index);
                              },
                              icon: Icon(
                                Icons.delete,
                                color: Colors.black,
                              )),
                        );
                      },
                    ),
                  ))
                ],
              ),
              Container(
                height: 100,
                child: Column(
                  children: [
                    Text("subtotal: ${listprovider.subtotal1.toString()}"),
                    Text("Tax: 50"),
                    Text("Total ${listprovider.totalval.toString()}"),
                  ],
                ),
              ),
              ElevatedButton(
                  onPressed: () async {
                    await StripeAPI.makePayment(
                        listprovider.totalval.toString(), "PKR", context);
                  },
                  child: Text("Checkout")),
            ],
          ),
        );
      },
    );
  }
}
