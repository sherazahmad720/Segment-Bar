# Segment Bar

A flutter package that shows a different colored segments in a row, each color showing a percentage of the value.

## Installation

Add the package to your `pubspec.yaml` dependencies:
```yaml
dependencies:
segment_bar: ^0.0.1
```

## Usage

```dart
import 'package:segment_bar/segment_bar.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: SegmentBar(
            segmentData: [
              SegmentBarModel(value: 50, color: Colors.red),
              SegmentBarModel(value: 50, color: Colors.green),
            ],
          ),
        ),
      ),
    );
  }
}
```
## properties

| Name | Type | Default | Description |
| --- | --- | --- | --- |
| segmentData | List<SegmentBarModel> | [] | The data to be shown in the widget. |
| height | double | 20 | Optional. The height of the widget. Default is 20. |
| radius | double | 0 | Optional. The radius of the widget. Default is 6. |


## SegmentBarModel
This model is used to represent each segment of the bar

| Name | Type | Default | Description |
| --- | --- | --- | --- |
| value | double | 0 | The value of the segment. |
| color | Color | Colors.black | The color of the segment. |

## Example

```dart
SegmentBar(
  segmentData: [
    SegmentBarModel(value: 50, color: Colors.red),
    SegmentBarModel(value: 50, color: Colors.green),
  ],
  height: 20,
  radius: 6,
)
```
In this example, the widget will show a red and green segment, each taking up 50% of the total width.


