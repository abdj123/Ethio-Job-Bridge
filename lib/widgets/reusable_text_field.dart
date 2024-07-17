import 'package:flutter/material.dart';

class ReusableTextField extends StatelessWidget {
  const ReusableTextField({
    super.key,
    required this.context,
    required this.hint,
    required this.suffixIcon,
    required this.widthFraction,
    required this.height,
  });

  final BuildContext context;
  final String hint;
  final IconData suffixIcon;
  final double widthFraction;
  final double height;

  @override
  Widget build(BuildContext context) {
    Color secondbackgroundColor = Theme.of(context).cardColor;
    final inputBorder = OutlineInputBorder(
        borderSide: Divider.createBorderSide(
          context,
        ),
        borderRadius: BorderRadius.circular(20));

    double screenWidth = MediaQuery.of(context).size.width;
    double preferredWidth = screenWidth * widthFraction;

    return Container(
      width: preferredWidth,
      padding: const EdgeInsets.only(top: 0),
      child: Form(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 2,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
              ),
              child: TextFormField(
                //key: formFiled,

                cursorColor: Colors.blue,
                decoration: InputDecoration(
                  hintText: hint,
                  suffixIcon: Icon(suffixIcon),
                  hintStyle: TextStyle(color: Colors.grey[400]),
                  fillColor: secondbackgroundColor,
                  filled: true,
                  border: inputBorder,
                  enabledBorder: inputBorder,
                  errorStyle: const TextStyle(fontSize: 0.01),
                  errorBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.red),
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey.shade400),
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Container reusableTextField(
  String hint,
  BuildContext context,
  TextEditingController controller, {
  String? Function(String?)? validator,
  String? errorText,
}) {
  Color secondbackgroundColor = Theme.of(context).cardColor;
  final inputBorder = OutlineInputBorder(
      borderSide: Divider.createBorderSide(
        color: Colors.grey,
        context,
      ),
      borderRadius: BorderRadius.circular(50));

  return Container(
    padding: const EdgeInsets.only(top: 5),
    child: Form(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 2,
          ),
          Theme(
            data: Theme.of(context).copyWith(
              colorScheme: ThemeData().colorScheme.copyWith(
                  // ignore: use_full_hex_values_for_flutter_colors
                  primary: const Color(0xff2E2E2E40),
                  secondary: Colors.white),
            ),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
              ),
              child: TextFormField(
                //key: formFiled,
                controller: controller,
                cursorColor: Colors.blue,
                decoration: InputDecoration(
                  contentPadding:
                      const EdgeInsets.symmetric(vertical: 2, horizontal: 6),
                  hintText: hint,
                  hintStyle: TextStyle(color: Colors.grey),
                  fillColor: secondbackgroundColor,
                  filled: true,
                  border: inputBorder,
                  enabledBorder: inputBorder,
                  errorText: errorText,
                  errorStyle: const TextStyle(fontSize: 0.01),
                  errorBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.red),
                    borderRadius: BorderRadius.circular(50),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
                validator: validator,
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
