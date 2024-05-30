import 'package:clase18_4/presentation/Screens/login.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends StatelessWidget {
static const String name = 'home';

List<String> titulos = ["Milanesa de pollo", "Fideos con tuco", "Hamburguesas", "Panchos", "Papas fritas", "Tequeños", "Pollo al curry", "Ñoquis", "Tarta", "Empanada", "Pizza", "Burrito"];
List<String> descripcion = ["Pechuga rebozada en pan rayado", "Tallarines con salsa de tomate", "Hamburguesa con cheddar y bacon ", "Panchos con mayo y mostaza", "Papas fritas para acompañar", "Bastoncitos de queso enrrollados", "Pollo con mezcla de especias", "Ñoquis caseros con bolognesa", "Tartita de JyQ", "Empanada de carne cortada a cuchillo", "Pizza de panceta y verdeo", "Burrito bien cargado" ];

String userName;
 HomeScreen({super.key , this.userName = ""});
  

  @override
  Widget build(BuildContext context) {

    return  Scaffold(
      appBar: AppBar (
        
        title: const Text("Comidas"),
        ),
      body:  ListView.builder(itemCount: titulos.length, itemBuilder: (context, index) {
                return Card(
                  child: ListTile(
                    title: Text(titulos[index],),
                    subtitle: Text(descripcion[index]),)
                );
              },)
    );
  }
}