import 'package:flutter/material.dart';

class CustomTextHoverButton extends StatefulWidget {
  final String title;
  final VoidCallback onTap;
  const CustomTextHoverButton({
    super.key,
    required this.title,
    required this.onTap,
  });

  @override
  State<CustomTextHoverButton> createState() => _CustomTextHoverButtonState();
}

class _CustomTextHoverButtonState extends State<CustomTextHoverButton> {
  bool isHovered = false;
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => isHovered = true),
      onExit: (_) => setState(() => isHovered = false),
      child: GestureDetector(
        onTap: widget.onTap,
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 950),
          width: 100,
          height: 40,
          alignment: AlignmentDirectional.center,
          decoration:
              (isHovered)
                  ? BoxDecoration(
                    color: Colors.blue[600]?.withAlpha((255 * 0.3).toInt()),
                    borderRadius: BorderRadius.circular(8),
                  )
                  : null,
          child: Text(
            widget.title,
            style: TextStyle(
              color: (isHovered) ? Colors.blue : Colors.white,
              fontSize: 18,
            ),
          ),
        ),
      ),
    );
  }
}
