//import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:parcial2electiva2y3/pages/CarPayment.dart';
import 'package:parcial2electiva2y3/pages/RootApp.dart';
import 'package:parcial2electiva2y3/resource/List.dart';
import 'package:parcial2electiva2y3/template/AppBarDescription.dart';
import 'package:page_transition/page_transition.dart';
import '../resource/List.dart';

class Description extends StatefulWidget {
  @override
  State<Description> createState() => _DescriptionState();
}

class _DescriptionState extends State<Description> {
  String defaultChair = "assets/images/Grupo0.png";

  @override
  Widget build(BuildContext context) {
    var fullWidth = MediaQuery.of(context).size;
    var fullHeight = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: Color(0xFFD6D6D6),
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Color(0xFFD6D6D6),
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => CarPayment()));
                },
                icon: Icon(
                  Icons.shopping_cart_outlined,
                  color: Colors.black87,
                )),
          ],
          leading: IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => RootApp()));
              },
              icon: Icon(
                Icons.arrow_back,
                color: Colors.black87,
              )),
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Column(
                children: [
                  Container(
                    width: fullWidth.width,
                    height: 200,
                    child: Ink.image(
                      image: AssetImage(defaultChair),
                      height: 100,
                      width: 100,
                      fit: BoxFit.scaleDown,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Container(
                            alignment: Alignment.bottomRight,
                            width: 40,
                            height: 180,
                            margin: EdgeInsets.only(top: 10, right: 10),
                            child:
                                Icon(Icons.favorite_rounded, color: Colors.red),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: fullWidth.width,
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20))),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Nombre",
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.black54,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              " 25.00",
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.black87,
                                fontWeight: FontWeight.bold,
                              ),
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(Icons.star, color: Colors.yellow),
                            Icon(Icons.star, color: Colors.yellow),
                            Icon(Icons.star, color: Colors.yellow),
                            Icon(Icons.star, color: Colors.yellow),
                            Icon(Icons.star, color: Colors.black38),
                            Text(
                              " 200 Vistas",
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.black87,
                                fontWeight: FontWeight.bold,
                              ),
                            )
                          ],
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 20),
                          child: Text(
                            "Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor ",
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.black87,
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 20),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                width: fullWidth.width,
                                margin: EdgeInsets.only(top: 20),
                                child: Text(
                                  "Colores: ",
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.black87,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                child: IconButton(
                                    onPressed: () {
                                      setState(() {
                                        defaultChair =
                                            prod_sillas[1]["img"].toString();
                                      });
                                    },
                                    icon: Icon(Icons.circle,
                                        color: Colors.green)),
                              ),
                              Container(
                                child: IconButton(
                                    onPressed: () {
                                      setState(() {
                                        defaultChair =
                                            prod_sillas[2]["img"].toString();
                                      });
                                    },
                                    icon: Icon(Icons.circle,
                                        color: Colors.yellow)),
                              ),
                              Container(
                                child: IconButton(
                                    onPressed: () {
                                      setState(() {
                                        defaultChair =
                                            prod_sillas[3]["img"].toString();
                                      });
                                    },
                                    icon:
                                        Icon(Icons.circle, color: Colors.red)),
                              )
                            ],
                          ),
                        ),
                        Container(
                          width: fullWidth.width,
                          child: ElevatedButton.icon(
                              style: ElevatedButton.styleFrom(
                                  primary: Colors.brown,
                                  padding:
                                      EdgeInsets.only(top: 15, bottom: 15)),
                              onPressed: () {
                                print("Haz hecho click en el boton");
                              },
                              icon: Icon(
                                Icons.shopping_cart_outlined,
                                color: Colors.white,
                              ),
                              label: Text(
                                "Colores",
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.white,
                                ),
                              )),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
        ));

    /* Column(
      children: [
        Container(
          width: fullWidth.width,
          height: fullHeight.height,
          color: Colors.white,
        )
      ],
    ); */
  }
}
