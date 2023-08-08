import 'package:flutter/material.dart';

class PaiementButton extends StatefulWidget {
  final String label;

  final Function() onTap;

  PaiementButton({required this.label, required this.onTap});

  @override
  _HoverButtonState createState() => _HoverButtonState();
}

class _HoverButtonState extends State<PaiementButton> {
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
        width: 100,
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: _isHovered ? Color(0xFF86044E) : Color(0xFFFFF9F7),
          borderRadius: BorderRadius.circular(50),
          border: Border.all(
            color: Color(0xFFFDDCD0),
            width: 1.0,
          ),
        ),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              // SizedBox(
              //   width: 10,
              // ),
              Text(
                widget.label,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: _isHovered ? Color(0xFFFFFFFF) : Color(0xFF718696),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
