import 'package:flutter/material.dart';

class MyButton extends StatefulWidget {
  final String label;
  final IconData myicon;
  final Function() onTap;

  MyButton({required this.label, required this.myicon, required this.onTap});

  @override
  _HoverButtonState createState() => _HoverButtonState();
}

class _HoverButtonState extends State<MyButton> {
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
        width: 120,
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
              Expanded(
                flex: 0,
                child: Icon(
                  widget.myicon,
                  size: 24,
                  color: _isHovered ? Color(0xFFFFFFFF) : Color(0xFF718696),
                ),
              ),
              // SizedBox(
              //   width: 10,
              // ),
              Text(
                widget.label,
                style: TextStyle(
                  fontSize: 14,
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
