import 'package:flutter/material.dart';

class TCustomCurveEdges extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();

    path.lineTo(0, size.height);

    final firstPointCurve1 = Offset(0, size.height - 20);
    final secondPointCurve1 = Offset(30, size.height - 20);
    path.quadraticBezierTo(
      firstPointCurve1.dx,
      firstPointCurve1.dy,
      secondPointCurve1.dx,
      secondPointCurve1.dy,
    );

    final firstPointCurve2 = Offset(0, size.height - 20);
    final secondPointCurve2 = Offset(size.width - 30, size.height - 20);
    path.quadraticBezierTo(
      firstPointCurve2.dx,
      firstPointCurve2.dy,
      secondPointCurve2.dx,
      secondPointCurve2.dy,
    );

    final firstPointCurve3 = Offset(size.width, size.height - 20);
    final secondPointCurve3 = Offset(size.width, size.height);
    path.quadraticBezierTo(
      firstPointCurve3.dx,
      firstPointCurve3.dy,
      secondPointCurve3.dx,
      secondPointCurve3.dy,
    );

    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}

// class TCustomCurveEdges extends CustomClipper<Path> {
//   @override
//   Path getClip(Size size) {
//     var path = Path();

//     // Start from the top left corner
//     path.lineTo(0.0, size.height - 20); // Start slightly lower

//     // Define the number of waves
//     int waveCount = 8; // Number of waves
//     double waveWidth =
//         size.width / waveCount; // Calculate the width of each wave

//     // Loop to create multiple small waves
//     for (int i = 0; i < waveCount; i++) {
//       // For each wave, we'll create two points: one control and one end point.
//       double controlX =
//           waveWidth * (i + 0.5); // Control point in the middle of the wave
//       double controlY = i.isEven
//           ? size.height - 10
//           : size.height - 30; // Alternate heights to create zig-zag
//       double endX = waveWidth * (i + 1); // End point of each wave
//       double endY = size.height - 20; // End points are along the same baseline

//       // Create the wave
//       path.quadraticBezierTo(controlX, controlY, endX, endY);
//     }

//     // Complete the path by connecting to the top-right corner
//     path.lineTo(size.width, 0.0);
//     path.close();

//     return path;
//   }

//   @override
//   bool shouldReclip(CustomClipper<Path> oldClipper) {
//     return false;
//   }
// }
