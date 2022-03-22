import 'package:flutter/material.dart';
import 'package:parcial2electiva2y3/pages/Description.dart';

class CarPayment extends StatefulWidget {
  CarPayment({Key? key}) : super(key: key);

  @override
  State<CarPayment> createState() => _CarPaymentState();
}

class _CarPaymentState extends State<CarPayment> {
  String defaultChair = "assets/images/Grupo0.png";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text.rich(
          TextSpan(text: "Carrito", style: TextStyle(color: Colors.black)),
          textAlign: TextAlign.end,
        ),
        leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black87,
            )),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 15),
                  width: 80,
                  height: 100,
                  padding: EdgeInsets.all(10),
                  decoration: const BoxDecoration(
                      color: Colors.black12,
                      borderRadius: BorderRadius.all(
                          Radius.circular(10))), // Image.asset(defaultChair
                  child: Ink.image(image: AssetImage(defaultChair)),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  margin: EdgeInsets.only(top: 10),
                  height: 100,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Nombre silla",
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.black54,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "24.99",
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.black87,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  width: 80,
                  height: 100,
                  alignment: Alignment.centerRight,
                  child: IconButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CarPayment()));
                      },
                      icon: Icon(
                        Icons.close_sharp,
                        color: Colors.black87,
                      )),
                )
              ],
            ),
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.only(top: 50),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Nombre silla",
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.black54,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "24.99",
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.black87,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    child: ElevatedButton.icon(
                        style: ElevatedButton.styleFrom(
                            primary: Colors.brown,
                            padding: EdgeInsets.only(top: 15, bottom: 15)),
                        onPressed: () {
                          print("Haz hecho click en el boton");
                        },
                        icon: Icon(
                          Icons.money_sharp,
                          color: Colors.white,
                        ),
                        label: Text(
                          "Pagar",
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
      ),
    );
  }
}
