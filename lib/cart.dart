import 'package:flutter/material.dart';
import 'Catalog.dart';
class Cart extends StatelessWidget {
  const Cart({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        centerTitle: true,
        backgroundColor: Colors.white,
        title:Text("Cart",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Column(
        children: [
          Placeholder(
          ),
        ],
      ),
    );
  }
}
class CartList extends StatefulWidget {
  final List<Catalog> value;
  const CartList({Key? key, required this.value}) : super(key: key);
  @override
  State<CartList> createState() => _CartListState();
}
class _CartListState extends State<CartList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        margin: EdgeInsets.only(bottom: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text("price"),
            ElevatedButton(
              style:ElevatedButton.styleFrom(backgroundColor: Colors.black),
              onPressed: (){
                ScaffoldMessenger.of(context).
                showSnackBar(SnackBar(content: Text("Buying not supported yet")));
              },
              child: Text("Buy"),)
          ],
        ),
      ),
      body: ListView.builder(
          itemCount: 5,
          itemBuilder: (context,index){
            return ListTile(
              leading: Icon(Icons.done),
              trailing:IconButton(
                icon: Icon(Icons.remove_circle_outline),
                onPressed: (){},
              ),
              title: Text("Items"),
              //leading: Text(widget.value.items),


            );
          }
      ),
    );
  }
}
