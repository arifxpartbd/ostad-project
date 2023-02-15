import 'package:flutter/material.dart';

class ProductViewPage extends StatelessWidget {
  String price;
  String id;
  String url;
  String name;

  ProductViewPage({Key? key,
    required this.name,
    required this.id,
    required this.price,
    required this.url
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Product Details Page'),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20,),
            Image.network(url),
            SizedBox(height: 10,),
            Text("Product Name: $name",style:
            TextStyle(
              fontWeight: FontWeight.bold
            ),
            ),
            SizedBox(height: 10,),
            Text("Product Price: $price"),
            SizedBox(height: 10,),
            MaterialButton(onPressed: (){},
              color: Colors.green,
            child: Text('Order Now',
              style: TextStyle(
                  color: Colors.white),
            ),
            )
          ],
        ),
      ),
    );
  }
}
