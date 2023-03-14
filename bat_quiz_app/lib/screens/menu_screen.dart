import 'package:bat_quiz_app/widgets/widgets.dart';
import 'package:flutter/material.dart';

class MenuScreen extends StatelessWidget {
   const MenuScreen({super.key});

   @override
   Widget build(BuildContext context) {
      return Scaffold(
         body: Background(
          child: Center(
           child: SafeArea(
             child: Column(
              children: [
                const SizedBox(height: 24,),
                const Image(image: AssetImage('assets/logo.png')),
                const SizedBox(height: 80,),
                MainButton(buttonText: 'Iniciar prueba', onTap: () => print('Iniciar'),),
                const SizedBox(height: 80,),
                MainButton(buttonText: 'Historial', onTap: () => print('Historial'))
               ],
             ),
           ),
          )
         ),
      );
   }
}