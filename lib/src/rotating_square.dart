import 'dart:math';

import 'package:flutter/material.dart';

class RotatingSquare extends StatefulWidget {
  final AnimationController controller;
  final Color borderColor;
  final Color backgroundColor;
  final BoxShape shape;
  final double size;
  final double borderSize;
  final Duration duration;
  final IndexedWidgetBuilder itemBuilder;

  RotatingSquare({
    Key key,
    this.controller,
    this.borderColor = Colors.blueGrey,
    this.backgroundColor = Colors.transparent,
    this.shape = BoxShape.rectangle,
    this.size = 50.0,
    this.borderSize,
    this.itemBuilder, // nao sei pra que serve ainda
    this.duration = const Duration(milliseconds: 1500),
  })  :
        // ? TODO assertions may be stupid. remove it?
        assert(borderColor != null,
            'loading_indicator: property [color] must not be null'),
        assert(shape != null,
            'loading_indicator: property [shape] must not be null'),
        assert(size != null,
            'loading_indicator: property [size] must not be null'),
        assert(borderSize != null ? borderSize < size / 2 : true,
            'loading_indicator: property [borderSize] must not be greater than half the widget size'),
        assert(duration != null,
            'loading_indicator: property [duration] must not be null'),
        super(key: key);

  @override
  _RotatingSquareState createState() => _RotatingSquareState();
}

class _RotatingSquareState extends State<RotatingSquare>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;
  Animation<double> _animation;

  @override
  void initState() {
    super.initState();

    _controller = widget.controller ??
        AnimationController(duration: widget.duration, vsync: this);

    _animation = CurveTween(curve: Curves.easeInOut).animate(_controller)
      ..addListener(
        () => setState(() {}),
      );

    _controller.repeat();
  }

  @override
  Widget build(BuildContext context) {
    final Matrix4 transform = Matrix4.rotationZ(_animation.value * pi * 2.0);

    return Center(
      child: Transform(
        transform: transform,
        alignment: Alignment.center,
        child: SizedBox.fromSize(
          size: Size.square(widget.size),
          child: _itemBuilder(0),
        ),
      ),
    );
  }

  _itemBuilder(int index) {
    return widget.itemBuilder != null
        ? widget.itemBuilder(context, index)
        : DecoratedBox(
            decoration: BoxDecoration(
              shape: widget.shape,
              color: widget.backgroundColor,
              border: Border.all(
                color: widget.borderColor,
                width: widget.borderSize ?? widget.size / 8,
                style: BorderStyle.solid,
              ),
            ),
          );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
