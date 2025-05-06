import 'package:flutter/material.dart';
import 'package:micro/theme/app_theme.dart';

class FocusBorderContainer extends StatefulWidget {
  final Widget child;
  final EdgeInsets? padding;
  final BoxDecoration? unfocusedDecoration;
  final BoxDecoration? focusedDecoration;

  const FocusBorderContainer({
    super.key,
    required this.child,
    this.padding,
    this.unfocusedDecoration,
    this.focusedDecoration,
  });

  @override
  State<FocusBorderContainer> createState() => _FocusBorderContainerState();
}

class _FocusBorderContainerState extends State<FocusBorderContainer> {
  bool _isFocused = false;

  @override
  Widget build(BuildContext context) {
    return FocusableActionDetector(
      onFocusChange: (isFocused) {
        setState(() {
          _isFocused = isFocused;
        });
      },
      child: Container(
        padding: widget.padding,
        decoration:
            _isFocused
                ? widget.focusedDecoration ?? _defaultFocusedDecoration
                : widget.unfocusedDecoration,
        child: widget.child,
      ),
    );
  }

  BoxDecoration get _defaultFocusedDecoration => BoxDecoration(
    color: Theme.of(context).brightness == Brightness.light ? blueSapphire.withAlpha(10) : blueSapphire.withAlpha(20),
    border: Border.all(
      color: Color(0xff0f52ba), // Or any desired focus color
      width: 3.0,
    ),
    borderRadius: BorderRadius.circular(4.0),
  );
}
