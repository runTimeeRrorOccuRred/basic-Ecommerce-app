import 'dart:convert';

import 'package:animation/Catalog.dart';
import 'package:animation/item.dart';
import 'package:flutter/material.dart';

class CartItems extends StatefulWidget {
  final Map temp;

  // final Map res={"Jack": "23", "John":"25"};
  CartItems({Key? key, required this.temp}) : super(key: key);

  @override
  State<CartItems> createState() => _CartItemsState();
}
class _CartItemsState extends State<CartItems> {
  static List list=[];
  @override
  Widget build(BuildContext context) {
    //print(widget.temp);
    // print(widget.temp);
    //var data= jsonEncode(widget.temp);

    setState((){
      // list= widget.temp.entries.map((e) => (e.value).toString()).toList();
      widget.temp.entries.forEach((element)=>list.add((element.value).toString()));

    });
    // widget.temp.entries.forEach((element)=>list.add((element.value).toString()));
    print('------------------------------$list');
    //print("see the value................""${list}");
    // print(widget.temp.length);
    return Scaffold(
      body: ListView.builder(
          itemCount: list.length,
          itemBuilder: (context,index){
            return ListTile(
              //leading: Text("hello"),
              trailing:Text(list[index]),
            );
          }
      ),
    );
  }

}


