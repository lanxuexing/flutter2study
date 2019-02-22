import 'package:flutter/material.dart';
import 'painter.dart';

class LiquidButton extends StatefulWidget {
  final Size size;
  final double progress;
  final VoidCallback onDownLoadStart;
  final VoidCallback onDownLoadEnd;

  const LiquidButton({
    Key key,
    @required this.size,
    @required this.progress,
    this.onDownLoadStart,
    this.onDownLoadEnd,
  }):super(key: key);

  @override
  LiquidButtonState createState() => LiquidButtonState();
}

class LiquidButtonState extends State<LiquidButton> with TickerProviderStateMixin {
  PainterStatus painterStatus =PainterStatus.download; // 初始化画笔的图标为向下
  AnimationController _controller;
  AnimationController _controllerStart;
  AnimationController _controllerEnd;
  Animation<double> _finishScale;
  Animation<double> _finishBubbles; // 结束泡沫
  Animation<double> _wave; // 水波纹
  Animation<double> _download;

  @override
  void initState() {
    super.initState();
    _initDownload();
    _initWave();
    _initFinishAnimation();
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
    _controllerStart.dispose();
    _controllerEnd.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (painterStatus ==PainterStatus.wave) {
      _controller.value = widget.progress;
    }
    return GestureDetector(
      onTap: () {
        _onTap();
      },
      child: Transform.scale( // 过渡动画--缩放
        scale: painterStatus == PainterStatus.download ? _download.value : (painterStatus == PainterStatus.tick ? _finishScale.value : 1.0),
        child: CustomPaint(
          size: widget.size,
          painter: WavePainter(
            painterStatus: painterStatus,
            waveProgress: _wave.value,
            finishBubblesProgress: _finishBubbles.value,
          ),
        ),
      ),
    );
  }

  void _onTap() {
    if (_controllerStart.isAnimating || _controller.isAnimating || _controllerEnd.isAnimating) {
      return;
    }
    if (painterStatus == PainterStatus.download) {
      _controllerStart.reset();
      _controllerStart.forward();
    }
  }

  void resetStatus() {
    painterStatus = PainterStatus.download;
    _controllerStart.reset();
    setState(() {});
  }

  // 初始化下载
  void _initDownload() {
    _controllerStart = AnimationController(
      animationBehavior: AnimationBehavior.preserve,
      duration: Duration(milliseconds: 250),
      vsync: this,
    )..addListener(() {
      setState(() {});
    })..addStatusListener((status) { // 动画监听（完成时）
      if (status == AnimationStatus.completed) {
        if (widget.onDownLoadStart != null) {
          widget.onDownLoadStart();
        }
        painterStatus = PainterStatus.wave; // 画笔水波纹
        _controller.reset();
        _controller.forward(); // 重置并开启动画
      }
    });

    _download = Tween<double>(
      begin: 0.8,
      end: 0.0
    ).animate(
      CurvedAnimation( // 曲线动画
        parent: _controllerStart,
        curve: Curves.linear
      )
    );
  }

  // 初始化水波纹
  void _initWave() {
    _controller =AnimationController(
      duration: Duration(microseconds: 5000),
      vsync: this
    )..addListener(() {
      setState(() {});
    })..addStatusListener((status) { // 动画监听（完成时）
      if (status == AnimationStatus.completed) {
        painterStatus = PainterStatus.tick; // 画笔打勾
        _controllerEnd.reset();
        _controllerEnd.forward(); // 重置并开启动画
      }
    });

    _wave =Tween<double>(
      begin: 0.0,
      end: 1.0
    ).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.linear
      )
    );
  }

  // 初始化完成的动画
  void _initFinishAnimation() {
    _controllerEnd = AnimationController(
      animationBehavior: AnimationBehavior.preserve,
      duration: Duration(milliseconds: 500),
      vsync: this
    )..addListener(() {
      setState(() {});
    })..addStatusListener((status) {
      if (status == AnimationStatus.completed) { // 动画监听（完成时）
        if (widget.onDownLoadEnd != null) {
          widget.onDownLoadEnd();
        }
      }
    });

    _finishBubbles = Tween<double>(
      begin: 0.0,
      end: 1.0
    ).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.linear
      )
    );

    _finishScale =Tween<double>(
      begin: 1.0,
      end: 0.8
    ).animate(
      CurvedAnimation(
        parent:_controller,
        curve:Curves.bounceInOut
      )
    );
  }

}