import 'package:flutter/material.dart';

class FocusLabelBorder extends StatefulWidget {
  final Widget child;
  final String label;
  final FocusNode? focusNode;
  const FocusLabelBorder({
    super.key,
    required this.child,
    required this.label,
    this.focusNode,
  });

  @override
  State<FocusLabelBorder> createState() => _FocusLabelBorderState();
}

class _FocusLabelBorderState extends State<FocusLabelBorder> {
  late final FocusNode _focusNode;
  bool _isFocused = false;

  @override
  void initState() {
    super.initState();
    _focusNode = widget.focusNode ?? FocusNode();
    _focusNode.addListener(_handleFocusChange);
  }

  @override
  void dispose() {
    _focusNode.removeListener(_handleFocusChange);
    if (widget.focusNode == null) {
      _focusNode.dispose();
    }
    super.dispose();
  }

  void _handleFocusChange() {
    setState(() {
      _isFocused = _focusNode.hasFocus;
    });
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final labelStyle = theme.textTheme.bodySmall?.copyWith(
      color: _isFocused ? theme.colorScheme.primary : theme.hintColor,
    );
    final borderSide = BorderSide(
      width: 1.0,
      color: _isFocused ? theme.colorScheme.primary : theme.hintColor,
    );

    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.only(
            top: 8.0,
          ), // Adjust top padding for label
          child: DecoratedBox(
            decoration: BoxDecoration(
              border: Border(
                top: borderSide,
                left: borderSide,
                right: borderSide,
                bottom: borderSide,
              ),
              borderRadius: BorderRadius.circular(
                4.0,
              ), // Optional rounded corners
            ),
            child: widget.child,
          ),
        ),
        Positioned(
          left: 16.0, // Adjust left position for label
          top: 0.0,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 4.0),
            color: Theme.of(context).canvasColor, // Match background color
            child: Text(widget.label, style: labelStyle),
          ),
        ),
      ],
    );
  }
}
