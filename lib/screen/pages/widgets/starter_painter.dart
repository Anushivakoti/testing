part of widgets;

class StarterPainter extends StatelessWidget {
  const StarterPainter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: _StarterCustomerPainter(),
    );
  }
}

class _StarterCustomerPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path = Path();

    double maxHeight = 290;
    double maxWidth = size.width.abs();
    double radius = 130;
    double borderRadius = 8;
    double sideOffset = (maxWidth - radius - (4 * borderRadius)) / 2;

    path.moveTo(0, 0);
    path.relativeLineTo(0, maxHeight - borderRadius);
    path.relativeQuadraticBezierTo(0, borderRadius, borderRadius, borderRadius);

    path.relativeLineTo(sideOffset, 0);
    path.relativeQuadraticBezierTo(
        borderRadius - 2, 0, borderRadius, -borderRadius);

    path.relativeArcToPoint(Offset(radius, 0),
        radius: const Radius.circular(65));

    path.relativeQuadraticBezierTo(2, borderRadius, borderRadius, borderRadius);
    path.relativeLineTo(sideOffset, 0);

    path.relativeQuadraticBezierTo(
        borderRadius, 0, borderRadius, -borderRadius);
    path.relativeLineTo(0, -maxHeight);
    path.close();

    final Paint paint = Paint()..color = mainColor;
    canvas.drawShadow(path, Colors.black, 16, false);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}
