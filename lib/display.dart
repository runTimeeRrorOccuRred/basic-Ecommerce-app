import 'package:flutter/material.dart';
import 'Catalog.dart';
class Display extends StatelessWidget {
  final Catalog item;
  const Display({Key? key, required this.item}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          children: [
            Container(
              height: 220,
              decoration: BoxDecoration(
                  color: Colors.white30.withOpacity(1),
                  borderRadius: BorderRadius.only(bottomLeft:Radius.circular(40) ,bottomRight:Radius.circular(40))
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    child: Hero(
                        tag: Key(item.id.toString()),
                        child: Center(child: Image.network(item.image))
                    ),
                  ),
                  SizedBox(height: 20,),
                  Text(item.name,
                    style: TextStyle(fontWeight: FontWeight.bold,
                        fontSize: 20),),
                  Text(item.desc)
                  // Expanded(
                  //     child: Container(
                  //   height: 20,
                  //
                  //       decoration: BoxDecoration(
                  //
                  //           color: Colors.deepPurple.withOpacity(0.2),
                  //         borderRadius: BorderRadius.circular(30)
                  //       ),
                  //
                  // )
                  // )
                ],
              ),
            ),
            Container(
                margin: EdgeInsets.only(top:50,left: 20,right: 10),
                child: Text(item.info,
                  style: TextStyle(
                      fontFamily: "Raleway"
                  ),))
          ],
        ),

        bottomNavigationBar: Container(
          decoration: BoxDecoration(
              color: Colors.white30.withOpacity(1),
              borderRadius: BorderRadius.only(topLeft: Radius.circular(40),
                  topRight: Radius.circular(40))
          ),

          child: ButtonBar(
            alignment: MainAxisAlignment.spaceBetween,
            buttonPadding: EdgeInsets.only(right: 40),
            children: [
              Text("Rs  ""${item.price.toString()}",
                style: TextStyle(fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.black),
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.black,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30),
                      ),
                      fixedSize: Size(100,40)
                  ),
                  onPressed: (){},
                  child: Text("Buy"))
            ],
          ),
        )
    );
  }
}
