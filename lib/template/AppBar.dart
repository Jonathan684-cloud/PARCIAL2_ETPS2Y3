import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget getAppBar() {
  return AppBar(
    backgroundColor: Colors.white,
    elevation: 0,
    title: Padding(
      padding: const EdgeInsets.only(left: 10, right: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(
            Icons.menu,
            color: Colors.black45,
          ),
          IconButton(
            onPressed: () {
              //Navigator.push(context, route)
            },
            icon: Icon(
              Icons.shopping_cart_outlined,
              color: Colors.black45,
            ),
          )
        ],
      ),
    ),
  );
}
