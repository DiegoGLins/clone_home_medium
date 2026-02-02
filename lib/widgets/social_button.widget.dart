import 'package:flutter/material.dart';

// class SocialButton extends StatelessWidget {
//   final String pathImage;
//   final String text;
//   const SocialButton({super.key, required this.pathImage, required this.text});

//   @override
//   Widget build(BuildContext context) {
//     return InkWell(
//       onTap: () {},
//       borderRadius: BorderRadius.circular(50),
//       child: Container(
//         height: 50,
//         decoration: BoxDecoration(
//           border: Border.all(color: const Color.fromARGB(255, 36, 36, 36)),
//           borderRadius: BorderRadius.circular(50),
//         ),
//         child: Expanded(
//           child: Align(
//             // alignment: Alignment.center,
//             child: Stack(
//               children: [
//                 Align(
//                   alignment: Alignment.center,
//                   child: Text(
//                     text,
//                     style: const TextStyle(
//                       fontWeight: FontWeight.w400,
//                       fontSize: 18,
//                     ),
//                   ),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.only(left: 20),
//                   child: Align(
//                     alignment: Alignment.centerLeft,
//                     child: SizedBox(child: Image.asset(pathImage, width: 20)),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

class SocialButton extends StatelessWidget {
  final String pathImage;
  final String text;

  const SocialButton({
    super.key,
    required this.pathImage,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      borderRadius: BorderRadius.circular(50),
      child: Container(
        height: 50,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        decoration: BoxDecoration(
          border: Border.all(color: const Color.fromARGB(255, 189, 188, 188)),
          borderRadius: BorderRadius.circular(50),
        ),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Image.asset(pathImage, width: 20),
            ),
            Text(
              text,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
