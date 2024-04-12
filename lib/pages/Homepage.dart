import 'package:flutter/material.dart';
import 'package:grocery_tute/model/cart.dart';
import 'package:provider/provider.dart';

import '../components/grocery_item_tile.dart';
import 'cart_page.dart';
class Home_page extends StatelessWidget {
  const Home_page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => Cart_Page()));
          },
          child: Icon(Icons.shopping_bag),
          backgroundColor: Colors.black,
        ),

        body:SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

          // goood morning
            SizedBox(height: 46.0),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Text("Good Morning,",
              style: TextStyle(
              ),
              ),

            ),
            SizedBox(height: 4.0),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Text("Lets order fresh items for you",
              style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'NotoSerif'
              ),
              ),

            ),
            SizedBox(height: 10.0),
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: Divider(
                thickness: 2,
              ),
            ),
            SizedBox(height: 10.0),
            // fresh items + grid
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Text("Fresh Items", style: TextStyle(
fontSize: 20,
                fontFamily: 'NotoSerif',
                fontWeight: FontWeight.bold

              ),),
            ),
            SizedBox(height: 10.0),
            Expanded(
              child: Consumer<Cartmodel>( builder: (context,value, child) {
                return GridView.builder(
                  itemCount: value.shopiems.length,

                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                  // always look like asqure to make it look like rectnagle
                    childAspectRatio: 1/1.1,
                  ),
                  itemBuilder: (BuildContext context, int index) {
                    return GroceryitemTile(
                      itemname:  value.shopiems[index][0],
                      itemprice:  value.shopiems[index][1],
                      itempath:  value.shopiems[index][2],
                      color:  value.shopiems[index][3],
                      onPressed:() {
                        Provider.of<Cartmodel>(context, listen:false).additemstocart(index);


                      },


                    );
                  },);
            },

              )
            )

          ],
        ),
      )
    );
  }
}
