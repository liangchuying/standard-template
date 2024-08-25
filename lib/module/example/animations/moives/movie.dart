import 'package:flutter/cupertino.dart';

class Movie {
  const Movie({
    this.key,
    this.poster,
    this.name,
    this.date,
    this.intro,
    this.price,
  });

  final Key? key;

  /// 海报图片
  final String? poster;

  /// 名称
  final String? name;

  /// 上映时间
  final String? date;

  /// 简介
  final String? intro;

  /// 票价
  final double? price;
}
