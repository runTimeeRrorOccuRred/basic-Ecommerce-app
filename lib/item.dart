import 'dart:convert';

import 'package:animation/Catalog.dart';
import 'package:flutter/material.dart';
import 'Catalog.dart';
import 'display.dart';
import 'cart.dart';
import 'cartlist.dart';
class ItemWidget extends StatefulWidget {
  final Catalog x;
  final List<Catalog> valueData;
  ItemWidget({Key? key, required this.x, required this.valueData }) :assert(x!=null),
        super(key: key);

  @override
  State<ItemWidget> createState() => _ItemWidgetState();
}

class _ItemWidgetState extends State<ItemWidget> {
  Map<dynamic,dynamic> temp={};
  List<Catalog> dataList=[];
  var data;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Card(
        elevation: 2,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: Row(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: InkWell(
                onTap: (){
                  Navigator.push(context,
                      MaterialPageRoute(
                          builder: (context)=>Display(
                              item:widget.x)
                      ));
                },
                child: Hero(
                  tag: Key(widget.x.id.toString()),
                  child: AnimatedContainer(
                    duration: Duration(seconds: 1),
                    child: Image.network(widget.x.image),
                    margin: EdgeInsets.only(bottom:0),
                  ),
                ),
              ),
            ),
            Expanded(child: Column(
              //crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: Text(
                    widget.x.name,
                    style: TextStyle(fontWeight: FontWeight.bold,
                        color: Colors.black87),
                  ),
                  margin: EdgeInsets.only(top: 80),
                ),
                Text(widget.x.desc),
                ButtonBar(
                  alignment: MainAxisAlignment.spaceBetween,
                  buttonPadding: EdgeInsets.only(right: 40),
                  children: [
                    Text("Rs  ""${widget.x.price.toString()}",
                      style: TextStyle(fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(backgroundColor: Colors.black,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30))
                        ),
                        onPressed: (){
                          // dataList.add(x.name);
                          // print(x.toMap());
                          //
                          //  jsonData=jsonDecode(xy);
                          //print(jsonData["name"]);
                          // print(z.runtimeType);
                          //data= jsonDecode(z);
                          //print(data["id"]);
                          // print(x.toMap().runtimeType);

                          temp.addAll(widget.x.toMap());
                          //Navigator.pop(context);


                          //dataList.add(x);
                          // dataList.add(x.price.toString());
                          // print(dataList);
                          //print(temp);
                          Navigator.push(context,MaterialPageRoute(builder:
                              (context)=>CartItems(temp:temp)
                          )
                          );
                        },
                        child: Text("Add to Cart"))
                  ],
                )
              ],
            ))
          ],
        ),
      ),
    );
    //   Card(
    //   elevation: 2,
    //   child: ListTile(
    //     // onTap: (){
    //     //   print(" You have selected ${x.name}");
    //     // },
    //     leading: Image.network(x.image),
    //       trailing:Text("Rs  ""${x.price.toString()}",
    //         style: TextStyle(color: Colors.deepPurple,
    //         fontWeight: FontWeight.bold),
    //       ),
    //     title: Text(x.name,
    //     style: TextStyle(color: Colors.deepPurple,
    //     fontWeight: FontWeight.bold),
    //     ),
    //     subtitle: Text(x.desc),
    //
    //   ),
    // );
  }
}



