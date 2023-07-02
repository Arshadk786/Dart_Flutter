import 'dart:math';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  State<StatefulWidget> createState() {
    return HomeState();
  }
}

class HomeState extends State<HomePage> with SingleTickerProviderStateMixin {
  double _circleRadius = 100;
  final Tween<double> _bgScale = Tween<double>(begin: 0.0, end: 1.0);
  AnimationController? _starIconAnimation;

  @override
  void initState() {
    _starIconAnimation =
        AnimationController(vsync: this, duration: const Duration(seconds: 5));
    super.initState();
    _starIconAnimation!.repeat();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          clipBehavior: Clip.none,
          children: [
            _pageBackground(),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                _circularAnimation(),
                _starIcon(),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget _pageBackground() {
    return TweenAnimationBuilder(
      tween: _bgScale,
      curve: Curves.elasticOut,
      duration: const Duration(seconds: 2),
      builder: (context, double scale, child) {
        return Transform.scale(
          scale: scale,
          child: child,
        );
      },
      child: Container(
        color: Colors.blue,
      ),
    );
  }

  Widget _circularAnimation() {
    return Center(
      child: GestureDetector(
        onTap: () {
          setState(() {
            _circleRadius += _circleRadius == 100 ? -50 : 300;
          });
        },
        child: AnimatedContainer(
          duration: const Duration(seconds: 5),
          curve: Curves.bounceInOut,
          width: _circleRadius,
          height: _circleRadius,
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(_circleRadius),
          ),
          child: const Center(
            child: Text(
              "BounceInOut",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }

  Widget _starIcon() {
    return AnimatedBuilder(
      animation: _starIconAnimation!.view,
      builder: (buildContext, child) {
        return Transform.rotate(
          angle: _starIconAnimation!.value * 2 * pi,
          child: child,
        );
      },
      child: const Icon(
        Icons.star,
        size: 70,
        color: Colors.white,
      ),
    );
  }
}
