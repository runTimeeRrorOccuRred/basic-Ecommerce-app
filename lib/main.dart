

import 'package:flutter/material.dart';
import 'login.dart';
import 'welcome.dart';
import 'cart.dart';
void main()
{
  runApp(
      MaterialApp(
    debugShowCheckedModeBanner: false,
    home:Login(),
    routes: {
      "/welcome":(context)=> Welcome(),
      "/cart":(context)=>Cart()
    },

  )
  );
}
