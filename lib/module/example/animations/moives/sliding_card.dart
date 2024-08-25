import 'package:flutter/material.dart';
import 'dart:math' as math;

import 'package:luid/module/example/animations/moives/movie.dart';
import 'package:styled_widget/styled_widget.dart';

class SlidingCard extends StatelessWidget {
  /// 动画过程偏移量
  final double offset;

  /// 电影类型
  final Movie movie;

  const SlidingCard({super.key, required this.offset, required this.movie});

  @override
  Widget build(BuildContext context) {
    double gauss = math.exp(-(math.pow((offset.abs() - 0.5), 2) / 0.08));
    return Transform.translate(
      offset: Offset(-32 * gauss * offset.sign, 0),
      child: Card(
        margin: EdgeInsets.only(left: 8, right: 8, bottom: 25),
        elevation: 8,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(32)),
        child: Column(
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.vertical(top: Radius.circular(32)),
              child: Image.asset(
                '${movie.poster}',
                height: MediaQuery.of(context).size.height * 0.3,
                alignment: Alignment(-offset.abs(), 0),
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Expanded(
                child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    '${movie.name}',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    '${movie.date}',
                    style: TextStyle(color: Colors.grey),
                  ),
                  Text(
                    '${movie.intro}',
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(color: Colors.grey),
                  ),
                  Spacer(),
                ],
              ),
            )),
          ],
        ),
      ),
    );
  }
}
