import 'package:flutter/material.dart';

class QuestionButton extends StatelessWidget {
  final String buttonText;
  final Function()? onTap;
  const QuestionButton({super.key, required this.buttonText, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => {
        onTap != null ? onTap!() : debugPrint('Hubo un error')
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        width: double.infinity,
        height: 90,
        child: Row(
          children: [
            const Image(image: AssetImage('assets/button.png')),
            const SizedBox(width: 16,),
            Stack(
              children: [
                const Image(image: AssetImage('assets/button_line.png')),
                Container(
                  margin: const EdgeInsets.only(left: 30, top: 24),
                  child: Text(buttonText, style: const TextStyle(color: Color.fromRGBO(149, 198, 200, 1), fontWeight: FontWeight.w500, fontSize: 20),)
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}