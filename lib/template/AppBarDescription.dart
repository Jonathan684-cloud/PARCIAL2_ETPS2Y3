// ! ESTE FICHERO NO ESTA SIENDO USADO
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
Widget getAppBarDescription() {
  return AppBar(
    backgroundColor: Color(0xFFD6D6D6),
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
