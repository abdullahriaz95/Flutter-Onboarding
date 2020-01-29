import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class PageIndicator extends StatelessWidget {
  final int currentIndex;
  final int pageCount;
  PageIndicator(this.currentIndex, this.pageCount);

  _indicator(bool isActive) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal:2.0),
        child: Container(
          child: SizedBox(height: 20, width: 20,
            child: SvgPicture.asset("assets/dumbell.svg",
            color: isActive ? Colors.white : Color(0xFF3E4750),),
          ),
        ),
    );
  }

  _buildPageIndicators() {
    List<Widget> indicatorList = [];
    for (int i = 0; i < pageCount; i++) {
      indicatorList
          .add(i == currentIndex ? _indicator(true) : _indicator(false));
    }
    return indicatorList;
  }

  @override
  Widget build(BuildContext context) {
    return new Row(
      children: _buildPageIndicators(),
    );
  }
}
