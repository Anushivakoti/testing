part of widgets;

class SplashLogo extends StatelessWidget {
  const SplashLogo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          'asset/images/logo.png',
          fit: BoxFit.fill,
        ),
        const Text.rich(
          TextSpan(
            text: 'GUITAR ',
            style: TextStyle(
              color: mainColor,
              fontWeight: FontWeight.bold,
              fontSize: 30,
            ),
            children: [
              TextSpan(
                text: 'SHOP',
                style: TextStyle(color: primaryFontColor),
              )
            ],
          ),
        ),
        const SizedBox(height: 10),
        const Text(
          'ONLINE SHOPPING',
          style: TextStyle(
            color: secondaryFontColor,
            letterSpacing: 7.5,
          ),
        )
      ],
    );
  }
}
