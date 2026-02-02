import 'package:flutter/material.dart';

class FaceBookButton extends StatelessWidget {
  final String pathImage;
  const FaceBookButton({super.key, required this.pathImage});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 60,
      height: 60,
      child: Material(
        color: Colors.transparent,
        shape: CircleBorder(),
        child: InkWell(
          customBorder: CircleBorder(),
          onTap: () {},
          child: Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: Colors.black, width: 1.5),
            ),
            child: Center(
              child: Image.asset(
                pathImage,
                width: 32, // controla tamanho
                height: 32, // controla tamanho
                fit: BoxFit.contain,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
