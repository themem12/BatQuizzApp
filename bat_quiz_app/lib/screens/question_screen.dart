import 'package:bat_quiz_app/widgets/widgets.dart';
import 'package:flutter/material.dart';

class QuestionScreen extends StatelessWidget {
   const QuestionScreen({super.key});

   @override
   Widget build(BuildContext context) {
      return Scaffold(
         body: Background(
           child: Stack(
             children: [
              const _CloseButton(),
              Container(
                margin: const EdgeInsets.only(top: 24),
                child: Center(
                  child: Column(
                    children: [
                      Stack(
                        children: [
                          const Image(
                            fit: BoxFit.cover,
                            width: 138,
                            height: 138,
                            image: AssetImage('assets/button.png')
                          ),
                          Container(width: 58, height: 62, margin: const EdgeInsets.only(top: 40, left: 40),child: const Text('10', textAlign: TextAlign.center, style: TextStyle(fontWeight: FontWeight.w500, fontSize: 48, color: Colors.green),))
                        ]
                      ),
                      const SizedBox(height: 32,),
                      const Text('¿Cómo se llama el mayordomo de Bruce Wayne?', 
                        style: TextStyle(fontWeight: FontWeight.w500, color: Color.fromRGBO(149, 198, 200, 1), fontSize: 32),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 32,),
                      QuestionButton(buttonText: 'Alfred Pennyworth', onTap: () {
                        print('Alfred Pennyworth');
                      },),
                      const SizedBox(height: 16,),
                      QuestionButton(buttonText: 'Bane', onTap: () {
                        print('Bane');
                      },),
                      const SizedBox(height: 16,),
                      QuestionButton(buttonText: 'Franchesco Bergolini', onTap: () {
                        print('Franchesco Bergolini');
                      },),
                    ],
                  ),
                ),
              ),
             ],
           ),
         ),
      );
   }
}

class _CloseButton extends StatelessWidget {
  const _CloseButton();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 8, left: 8),
      child: const Image(fit: BoxFit.cover, width: 72, height: 72, image: AssetImage('assets/close_button.png'),)
    );
  }
}