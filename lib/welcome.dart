import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'Catalog.dart';
import 'item.dart';
import 'dart:convert';
class Welcome extends StatefulWidget {
  const Welcome({Key? key}) : super(key: key);
  @override
  State<Welcome> createState() => _WelcomeState();
}class _WelcomeState extends State<Welcome> {
  @override
  void initState()
  {
    super.initState();
    loadData();
  }
  loadData() async
  {
    await Future.delayed(Duration(seconds: 1));
    var catalogJson = await rootBundle.loadString("assets/catalog.json");
    var decodedData= jsonDecode(catalogJson);
    // print(catalogJson);
    // print(decodedData.runtimeType);
    // print(decodedData);
    var productsData= decodedData["products"];
    //print(productsData);
    //print(productsData.runtimeType);
    setState((){
      Catalog.items = List.from(productsData).map<Catalog>((items) =>
          Catalog.fromMap(items)).toList();
    });

  }
  Widget build(BuildContext context) {
    //final dummy= List.generate(3, (index) => Catalog.items[0]);
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: (){
            // Navigator.pushNamed(context, "/cart");
          },
          backgroundColor: Colors.black87.withOpacity(0.8),
          child: Icon(Icons.add_shopping_cart),
        ),
        body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(left: 12,top: 10),
                child: Text("Catalog App",
                  style: TextStyle(fontSize: 25),),
              ),
              Container(
                  margin: EdgeInsets.only(left: 13),
                  child: Text("Trending Materials")),
              SizedBox(height: 10,),

              Catalog.items!=null && Catalog.items.isNotEmpty?
              Expanded(
                child: ListView.builder(itemCount: Catalog.items.length,
                    itemBuilder: (context,index){
                      return ItemWidget(x:Catalog.items[index], valueData:Catalog.items);
                    }
                ),
              )
              // GridView.builder(
              //   gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,
              //   mainAxisSpacing:0,
              //   crossAxisSpacing: 0),
              //
              //   itemBuilder: (context,index)
              //     {
              //       final y= Catalog.items[index];
              //       return Card(
              //         child: GridTile(header: Text(y.name),
              //           child: Image.network(y.image),
              //           footer: Text(y.price.toString()),
              //         ),
              //       );
              //     }
              // )
                  :
              Center(child: CircularProgressIndicator(),
              ),
            ])
    );
  }
}
