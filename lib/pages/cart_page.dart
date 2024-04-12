import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../model/cart.dart';

class Cart_Page extends StatelessWidget {
  const Cart_Page({super.key});

  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
      ),
      body: Consumer<Cartmodel>(
        builder: (BuildContext context, value, child) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24.0),
                child: Text(
                  "My Cart",
                  style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'NotoSerif',
                  ),
                ),
              ),
              Expanded(
                child: value.cartitems.isEmpty
                    ? Center(
                  child: Text(
                    "Your cart is empty....",
                    style: TextStyle(fontSize: 24,
                    fontWeight: FontWeight.bold,
                      fontFamily: 'NotoSerif'
                    )
                    ,
                  ),
                )
                    : ListView.builder(
                  padding: EdgeInsets.all(12),
                  itemCount: value.cartitems.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.all(12.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: ListTile(
                          leading: Image.asset(
                            value.cartitems[index][2],
                            height: 40,
                          ),
                          title: Text(
                            value.cartitems[index][0],
                            style: TextStyle(
                              fontFamily: 'NotoSerif',
                            ),
                          ),
                          subtitle: Text("\$ " + value.cartitems[index][1]),
                          trailing: IconButton(
                            icon: Icon(Icons.cancel),
                            onPressed: () {
                              Provider.of<Cartmodel>(context, listen: false)
                                  .removeitems(index);
                            },
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(36.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  padding: EdgeInsets.all(24),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Total Price ",
                            style: TextStyle(
                              color: Colors.green[100],
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 4),
                          Text(
                            '\$' + value.Calculatetotal(),
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ],
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(
                            color: Colors.green.shade100,
                          ),
                        ),
                        padding: EdgeInsets.all(12),
                        child: Row(
                          children: [
                            Text(
                              "Pay Now  ",
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                            Icon(
                              Icons.arrow_forward_ios,
                              size: 16,
                              color: Colors.white,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }

}
