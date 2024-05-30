import 'package:clase18_4/presentation/Screens/welcome.dart';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';


List<String> users = ["cambi", "echi", "lilo"];
List<String> passwords = ["god", "amorypaz123", "mesasilla"];

class LoginScreen extends StatelessWidget {
   LoginScreen({super.key});
  
  TextEditingController passController = TextEditingController() ;
  TextEditingController userController = TextEditingController() ;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      
        body: Column (mainAxisAlignment: MainAxisAlignment.center,
          
          children: [
            const Text("Introduzca Usuario y contraseña"),
             TextField(
              controller: userController,
              decoration: const InputDecoration(
                hintText: 'Usuario',
                icon: Icon(Icons.person_2_outlined),
             ),
            ),

             TextField(
              controller: passController,
              decoration: const InputDecoration(
                hintText: 'Contraseña',
                icon: Icon(Icons.lock_clock_outlined),
              ),
              obscureText: true,
            ),

             const SizedBox(height: 50),

             ElevatedButton(
              onPressed: (){
                String inputUser = userController.text;
                String inputPass = passController.text;

                var indexUser = users.indexOf(inputUser);
                  var indexPass = passwords.indexOf(inputPass);
                  if(indexUser == indexPass && indexUser != -1){
                    context.pushNamed(HomeScreen.name , extra: inputUser);
                  }
                  else if(userController.text == '' && passController.text == ''){
                    SnackBar snackBar = const SnackBar(
                      content: Text("Usuario y Contraseña Vacios"),
                      duration: Duration(seconds: 3),
                      );
                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
                  }
                  else if(userController.text == ''){
                    SnackBar snackBar = const SnackBar(
                      content: Text("Usuario Vacio"),
                      duration: Duration(seconds: 3),
                      );
                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
                  }
                  else if(passController.text == ''){
                    SnackBar snackBar = const SnackBar(
                      content: Text("Contraseña Vacia"),
                      duration: Duration(seconds: 3),
                      );
                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
                  }
                  else{
                    SnackBar snackBar = const SnackBar(
                      content: Text("Usuario o Contraseña Incorrecto"),
                      duration: Duration(seconds: 3),
                      );
                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
                  }
                }, 
              
              child: const Text('Login'), 

            ),

            
        
        
        ],),
      );
    

  }
}