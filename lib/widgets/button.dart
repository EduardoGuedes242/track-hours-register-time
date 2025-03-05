import 'package:flutter/material.dart';
import 'package:register_time/core/theme/app_color.dart';

class ButtonProprio extends StatelessWidget {
  const ButtonProprio({
    super.key,
    required this.title,
    required this.onClick,
    this.width = 126,
  });

  final String title;
  final Function onClick;
  final double width;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onClick(),
      child: Container(
        height: 49,
        width: width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(7),
          color: PaletaCores.azulPrimairo,
        ),
        child: Center(
          child: Text(
            title,
            style: TextStyle(
              color: PaletaCores.textoButao,
              fontFamily: 'Axiforma',
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }
}
