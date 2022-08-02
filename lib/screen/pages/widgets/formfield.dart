part of widgets;

class CustomTextFormField extends StatelessWidget {
  final String? labelText;
  const CustomTextFormField({
    this.labelText,
    Key? key,
    required TextEditingController controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(vertical: 16),
        decoration: BoxDecoration(
          color: placeholderColor,
          borderRadius: BorderRadius.circular(50),
        ),
        child: TextFormField(
          style: const TextStyle(color: primaryFontColor),
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(50),
              borderSide: BorderSide.none,
            ),
            floatingLabelStyle: const TextStyle(
              color: secondaryFontColor,
            ),
            contentPadding:
                const EdgeInsets.symmetric(vertical: 4, horizontal: 28),
            labelText: labelText,
            isCollapsed: true,
          ),
        ));
  }
}
