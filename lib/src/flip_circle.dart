import 'dart:math';

import 'package:flutter/material.dart';

class FlipCircle extends StatefulWidget {
  final AnimationController controller;
  final Color borderColor;
  final Color backgroundColor;
  final BoxShape shape;
  final double size;
  final double borderSize;
  final Duration duration;
  final IndexedWidgetBuilder itemBuilder;

  FlipCircle({
    Key key,
    this.controller,
    this.borderColor = Colors.blueGrey,
    this.backgroundColor = Colors.transparent,
    this.shape = BoxShape.circle,
    this.size = 50.0,
    this.borderSize,
    this.itemBuilder, // nao sei pra que serve ainda
    this.duration = const Duration(milliseconds: 1500),
  })  :
        // ? TODO assertions may be stupid. remove it?
        assert(borderColor != null,
            'loading_indicator: property [color] must not be null'),
        assert(shape != null,
            'loading_indicator property [shape] must not be null'),
        assert(
            size != null, 'loading_indicator property [size] must not be null'),
        assert(borderSize != null ? borderSize < size / 2 : true,
            'loading_indicator: property [borderSize] must not be greater than half the widget size'),
        assert(duration != null,
            'loading_indicator: property [duration] must not be null'),
        super(key: key);

  @override
  _FlipCircleState createState() => _FlipCircleState();
}

class _FlipCircleState extends State<FlipCircle>
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
    final Matrix4 transform = Matrix4.identity()
      ..rotateY((0 - _animation.value) * 3 * pi);

    // TODO find out how not to cut the border from the box
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

  Widget _itemBuilder(int index) {
    return widget.itemBuilder != null
        ? widget.itemBuilder(context, index)
        : DecoratedBox(
            decoration: BoxDecoration(
              shape: widget.shape,
              color: widget.backgroundColor ?? Colors.transparent,
              border: Border.all(
                color: widget.borderColor,
                width: widget.borderSize ?? widget.size / 6,
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
