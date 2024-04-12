import 'package:flutter/material.dart';

class GroceryitemTile extends StatelessWidget {

  final String itemname;
  final String itemprice;
  final String itempath;
  final color;
  void Function()? onPressed;

   GroceryitemTile({super.key,
    // passing this at our home page
    required this.itemname,
    required this.itemprice,
    required this.itempath,
    required this.color,
    required this.onPressed


  });


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        padding: EdgeInsets.all(12.0),
        decoration: BoxDecoration(
          color: color[100],
          borderRadius: BorderRadius.circular(12)
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [

          // image
          Image.asset(itempath,
          height: 72.0,
          ),
            Text(itemname),
            MaterialButton(onPressed:  onPressed,
            color : color[800],
              child: Text("\$ "+
                itemprice,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold
                ),
              ),



            )

          ],







          )


        ),
    );

  }
}
