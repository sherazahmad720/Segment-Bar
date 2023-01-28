library segment_bar;

import 'package:flutter/material.dart';
import 'package:segment_bar/percent_graph_model.dart';

class SegmentBar extends StatelessWidget {
  /// Creates a widget that shows a Different colors in a row , Each color shows a percentage of the value's
  const SegmentBar({
    Key? key,
    required this.segmentData,
    this.height = 20,
    this.radius = 6,
  }) : super(key: key);

  /// segmentData is a list of SegmentBarModel that represent the percentage of each color
  final List<SegmentBarModel> segmentData;

  /// height is the height of the widget , default is 20
  final double height;

  /// radius is the radius of the widget , default is 6
  final double radius;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(radius),
        child: Container(
          color: Colors.grey,
          child: Row(children: [
            for (int i = 0; i < segmentData.length; i++)
              Expanded(
                  flex: segmentData[i].value.round(),
                  child: Container(
                    decoration: BoxDecoration(
                      color: _getColor(i),
                    ),
                  )),
          ]),
        ),
      ),
    );
  }

  Color? _getColor(int index) {
    if (index > segmentData.length - 1) {
      return Colors.grey;
    } else {
      return segmentData[index].color;
    }
  }
}
