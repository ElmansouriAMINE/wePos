import 'package:flutter/material.dart';

class HoverButton extends StatefulWidget {
  final String label;
  final Function() onTap;

  HoverButton({required this.label, required this.onTap});

  @override
  _HoverButtonState createState() => _HoverButtonState();
}

class _HoverButtonState extends State<HoverButton> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      onTapCancel: () {
        setState(() {
          _isHovered = false;
        });
      },
      onTapDown: (TapDownDetails details) {
        setState(() {
          _isHovered = true;
        });
      },
      onTapUp: (TapUpDetails details) {
        setState(() {
          _isHovered = false;
        });
      },
      child: Container(
        width: 180,
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: _isHovered ? Color(0xFFCCB8A8) : Color(0xFFFFFFFF),
          borderRadius: BorderRadius.circular(50),
          border: Border.all(
            color: Color(0xFFBE9182),
            width: 1.0,
          ),
        ),
        child: Center(
          child: Text(
            widget.label,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: _isHovered ? Color(0xFFFFFFFF) : Color(0xFFCCB8A8),
            ),
          ),
        ),
      ),
    );
  }
}
