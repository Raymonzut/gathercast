import 'package:flutter/material.dart';

class AdjustableCounter extends StatefulWidget {

  AdjustableCounter({
    Key key,
    @required this.counterStart,
  }): assert(counterStart != null),
      super(key: key);


  final int counterStart;
  static final int counterMin = 0;
  static final int counterMax = 255;

  _AdjustableCounterState createState() => _AdjustableCounterState();
}


class _AdjustableCounterState extends State<AdjustableCounter> {
  int count = 0;

  @override
  void initState() {
    count = widget.counterStart;

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(children: [
        FlatButton(
          onPressed: () {
            if (count > AdjustableCounter.counterMin) {
              setState(() {
                count--;
              });
            }
          },
          child:
          Text(
              "-"
          ),
        ),
        Text(
          count.toString(),
        ),
        FlatButton(
          onPressed: () {
            if (count < AdjustableCounter.counterMax) {
              setState(() {
                count++;
              });
            }
          },
          child:
          Text(
              "+"
          ),
        ),
      ],
        mainAxisAlignment: MainAxisAlignment.center,
      ),
    );
  }
}