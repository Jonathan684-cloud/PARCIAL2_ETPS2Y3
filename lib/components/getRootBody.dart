import 'package:flutter/material.dart';
import 'package:parcial2electiva2y3/pages/Description.dart';
import 'package:parcial2electiva2y3/resource/List.dart';
import 'package:page_transition/page_transition.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

import '../resource/List.dart';

class getRootBody extends StatefulWidget {
  getRootBody({Key? key}) : super(key: key);

  @override
  State<getRootBody> createState() => _getRootBodyState();
}

class _getRootBodyState extends State<getRootBody> {
  dynamic categoria = prod_sillas;
  int activarCategoria = 0;
  int seleccionarProductoLista1 = 0;
  int seleccionarProductoLista2 = 0;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.only(left: 20, right: 20),
      child: buscadorApp(),
    );
  }

  Widget buscadorApp() {
    var fullWidth = MediaQuery.of(context).size;
    var fullHeight = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // * CONTENEDOR DEL NOMBRE DE LA APP
        Container(
          margin: EdgeInsets.only(top: 10),
          width: fullWidth.width,
          child: Text.rich(TextSpan(
              text: "Comercial SIVAR",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold))),
        ),
        // * CONTENEDOR DEL BUSCADOR DE LA APP
        TextField(
          decoration: InputDecoration(
              hintText: "Buscar ...",
              fillColor: Colors.black12,
              filled: true,
              border: InputBorder.none,
              prefixIcon: Icon(Icons.search)),
        ),
        // * LISTA DE CATEGORÍAS Y FUNCIONAMIENTO DE ESTE SEGÚN SU ESTADO
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(categorias.length, (index) {
              return Padding(
                padding: const EdgeInsets.only(right: 5),
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      activarCategoria = index;

                      if (index == 0) {
                        categoria = prod_sillas;
                      } else if (index == 1) {
                        categoria = prod_muebles;
                      } else if (index == 2) {
                        categoria = prod_camas;
                      } else if (index == 3) {
                        categoria = prod_cunas;
                      } else if (index == 4) {
                        categoria = prod_cuadros;
                      }
                    });
                  },
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 20),
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        child: Text.rich(TextSpan(
                          text: categorias[index],
                          style: TextStyle(
                              fontSize: 15,
                              color: Colors.black45,
                              fontWeight: FontWeight.bold),
                        )),
                      ),
                      Container(
                        width: 50,
                        height: 1,
                        color: activarCategoria == index
                            ? Colors.black87
                            : const Color.fromRGBO(255, 255, 255, 1),
                      )
                    ],
                  ),
                ),
              );
            }),
          ),
          //),
        ),
        // * LISTA DE LAS SILLAS QUE SE VERÁN EN EL VIEWPORT #1
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(categoria.length, (index) {
              return Padding(
                padding: const EdgeInsets.only(left: 10),
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      seleccionarProductoLista1 = index;

                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Description()));
                      /*Navigator.push(
                          context,
                          PageTransition(
                              alignment: Alignment.bottomCenter,
                              child: Description(
                                  img: categoria[index],
                                  titulo: categoria[index],
                                  precio: categoria[index],
                                  descripcion: categoria[index]),
                              type: PageTransitionType.scale));*/
                    });
                  },
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 15),
                        width: 140,
                        height: 160,
                        decoration: const BoxDecoration(
                            color: Colors.black12,
                            borderRadius: BorderRadius.all(Radius.circular(
                                10))), // Image.asset(producto[index]["img"]
                        child: Ink.image(
                            image: AssetImage(categoria[index]["img"]),
                            height: 100,
                            width: 100,
                            fit: BoxFit.scaleDown,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Container(
                                  width: 40,
                                  margin: EdgeInsets.only(top: 10, right: 10),
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(10))),
                                  child: Icon(Icons.favorite_rounded,
                                      color: seleccionarProductoLista1 == index
                                          ? Colors.red
                                          : Colors.white),
                                ),
                              ],
                            )),
                      ),
                      Container(
                        width: 100,
                        margin: EdgeInsets.only(top: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              categoria[index]["titulo"],
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.black54,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              categoria[index]["precio"].toString(),
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.black87,
                                fontWeight: FontWeight.bold,
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              );
            }),
          ),
        ),
        // * LISTA DE LAS SILLAS QUE SE VERÁN EN EL VIEWPORT #1
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(categoria.length, (index) {
              return Padding(
                padding: const EdgeInsets.only(left: 10),
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      seleccionarProductoLista2 = index;
                    });
                  },
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 15),
                        width: 140,
                        height: 160,
                        decoration: const BoxDecoration(
                            color: Colors.black12,
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        child: Ink.image(
                            image: AssetImage(categoria[index]["img"]),
                            height: 100,
                            width: 100,
                            fit: BoxFit.scaleDown,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Container(
                                  width: 40,
                                  margin: EdgeInsets.only(top: 10, right: 10),
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(10))),
                                  child: Icon(Icons.favorite_rounded,
                                      color: seleccionarProductoLista2 == index
                                          ? Colors.red
                                          : Colors.white),
                                ),
                              ],
                            )),
                      ),
                      Container(
                        width: 100,
                        margin: EdgeInsets.only(top: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              categoria[index]["titulo"],
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.black54,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              categoria[index]["precio"].toString(),
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.black87,
                                fontWeight: FontWeight.bold,
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              );
            }),
          ),
        ),
      ],
    );
  }

  // ! OBVIAR ESTE MÉTODO
  // ignore: todo
  // TODO: REFACTOR DE ESTE MÉTODO
  Widget listaCategorias(int activarCategoria) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(categorias.length, (index) {
          return Padding(
            padding: const EdgeInsets.only(right: 5),
            child: GestureDetector(
              onTap: () {
                setState(() {
                  activarCategoria = index;
                });
              },
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    decoration: BoxDecoration(
                        color: activarCategoria == index
                            ? const Color.fromRGBO(134, 81, 137, 1)
                            : const Color.fromRGBO(255, 255, 255, 1),
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: Text.rich(TextSpan(
                      text: categorias[index],
                      style: TextStyle(
                          fontSize: 15,
                          color: activarCategoria == index
                              ? const Color.fromRGBO(255, 255, 255, 1)
                              : const Color.fromRGBO(134, 81, 137, 1),
                          backgroundColor: activarCategoria == index
                              ? const Color.fromRGBO(134, 81, 137, 1)
                              : const Color.fromRGBO(255, 255, 255, 1),
                          fontWeight: FontWeight.bold),
                    )),
                  )
                ],
              ),
            ),
          );
        }),
      ),
      //),
    );
  }
}
