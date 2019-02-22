import 'package:flutter/material.dart';
import 'dart:ui';
import 'bubble.dart';

class BasePourProvider extends BaseProvider {
  Point pourBottom = Point(0.0, 0.0);
  Point pourTop = Point(0.0, 0.0);
  final Paint liquidPaint = Paint()..color = Colors.green;
  final Paint bubblePaint = Paint();
  final Paint iconPaint = Paint();
  final List<Bubble> bubbles = [];
  double frameTop;
  double bottom;
  double top;
  double pourStrokWidth; // 波纹划宽度
  bool get hasBubble => (bubbles != null && bubbles.length != 0);

  BasePourProvider.size(Size size):super.size(size) {
    frameTop = centerY - 3 * radius;
    top =centerY + radius;
    bottom = centerY + radius;
    pourStrokWidth = radius / 6;
    iconPaint
      ..color = Colors.white
      ..strokeWidth = radius * 0.15
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round;
  }

  @override
  draw(Canvas canvas, double progress) {
    if (hasBubble) {
      for (int i = 0; i < bubbles.length; i++) {
        bubbles[i].draw(canvas, bubblePaint, progress);
      }
    }
    return null;
  }

  clearBubbles() {
    bubbles.clear();
  }

  generateBubble(double x, double y) {
    BubbleGenerator generator =BubbleGenerator(x, y)
      ..generateBubbleX(x, radius * 0.5, pourStrokWidth * 0.5)
      ..generateBubbleY(y, radius)
      ..generateRadius(radius)
      ..generateDuration(1500, 500);

      Bubble bubble =Bubble.generate(generator);
      bubbles.add(bubble);
  }
}

class Point {
  double x;
  double y;
  Point(this.x, this.y);
}

// 基础抽象类
abstract class BaseProvider {
  double centerX;
  double centerY;
  double radius;

  BaseProvider.size(Size size) {
    centerX = size.width / 2;
    centerY = size.height / 2;
    radius = size.width / 4;
  }

  draw(Canvas canvas, double progress);
}
