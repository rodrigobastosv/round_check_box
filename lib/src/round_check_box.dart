import 'package:flutter/material.dart';

class RoundCheckBox extends StatefulWidget {
  const RoundCheckBox({
    Key key,
    this.isChecked,
    this.checkedWidget,
    this.uncheckedWidget,
    this.checkedColor,
    this.uncheckedColor,
    this.borderColor,
    this.size,
    this.animationDuration,
    @required this.onTap,
  })  : assert(onTap != null),
        super(key: key);

  final bool isChecked;
  final Widget checkedWidget;
  final Widget uncheckedWidget;
  final Color checkedColor;
  final Color uncheckedColor;
  final Color borderColor;
  final double size;
  final Function(bool) onTap;
  final Duration animationDuration;

  @override
  _RoundCheckBoxState createState() => _RoundCheckBoxState();
}

class _RoundCheckBoxState extends State<RoundCheckBox> {
  bool isChecked;
  Duration animationDuration;
  double size;
  Widget checkedWidget;
  Widget uncheckedWidget;
  Color checkedColor;
  Color uncheckedColor;
  Color borderColor;

  @override
  void initState() {
    isChecked = widget.isChecked ?? false;
    animationDuration = widget.animationDuration ?? Duration(milliseconds: 500);
    size = widget.size ?? 40.0;
    checkedColor = widget.checkedColor ?? Colors.green;
    borderColor = widget.borderColor ?? Colors.grey;
    checkedWidget =
        widget.checkedWidget ?? Icon(Icons.check, color: Colors.white);
    uncheckedWidget = widget.uncheckedWidget ?? const SizedBox.shrink();
    super.initState();
  }

  @override
  void didUpdateWidget(RoundCheckBox oldWidget) {
    uncheckedColor =
        widget.uncheckedColor ?? Theme.of(context).scaffoldBackgroundColor;
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() => isChecked = !isChecked);
        widget?.onTap(isChecked);
      },
      child: ClipRRect(
        borderRadius: BorderRadius.circular(size / 2),
        child: AnimatedContainer(
          duration: animationDuration,
          height: size,
          width: size,
          decoration: BoxDecoration(
            color: isChecked ? checkedColor : uncheckedColor,
            border: Border.all(
              color: borderColor,
            ),
            borderRadius: BorderRadius.circular(size / 2),
          ),
          child: isChecked ? checkedWidget : uncheckedWidget,
        ),
      ),
    );
  }
}
