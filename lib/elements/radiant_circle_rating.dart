import 'dart:math';
import 'package:flutter/material.dart';

class RadialPercentWidget extends StatelessWidget {
  final Widget child;
  final double percent;
  final Color fillcolor;
  final Color linecolor;
  final Color freecolor;
  final double linewidth;

  const RadialPercentWidget({
    super.key,
    required double this.percent,
    required Color this.fillcolor,
    required Color this.linecolor,
    required Color this.freecolor,
    required double this.linewidth,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        CustomPaint(
          painter: MyPaint(
            percent: percent / 100,
            fillcolor: fillcolor,
            linecolor: linecolor,
            freecolor: freecolor,
            linewidth: linewidth,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(child: child),
        ),
      ],
    );
  }
}

class MyPaint extends CustomPainter {
  final double percent;
  final Color fillcolor;
  final Color linecolor;
  final Color freecolor;
  final double linewidth;

  MyPaint({
    required this.percent,
    required this.fillcolor,
    required this.linecolor,
    required this.freecolor,
    required this.linewidth,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final fillPainter = Paint();
    fillPainter.color = fillcolor;
    canvas.drawOval(
      Offset.zero & size,
      fillPainter,
    );

    final arcPainter = Paint();
    arcPainter.color = linecolor;
    arcPainter.strokeWidth = linewidth;
    arcPainter.style = PaintingStyle.stroke;
    arcPainter.strokeCap = StrokeCap.round;
    canvas.drawArc(
      const Offset(8, 8) & Size(size.width - 16, size.height - 16),
      -pi / 2,
      pi * 2 * percent,
      false,
      arcPainter,
    );

    final freeSpacePainter = Paint();
    freeSpacePainter.color = freecolor;
    freeSpacePainter.strokeWidth = linewidth;
    freeSpacePainter.strokeCap = StrokeCap.round;
    freeSpacePainter.style = PaintingStyle.stroke;
    canvas.drawArc(
      const Offset(8, 8) & Size(size.width - 16, size.height - 16),
      pi * 2 * percent - (pi / 2),
      pi * 2 * (1.0 - percent),
      false,
      freeSpacePainter,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
