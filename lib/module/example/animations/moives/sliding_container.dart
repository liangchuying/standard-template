import 'package:flutter/material.dart';
import 'package:luid/module/example/animations/moives/movie.dart';
import 'package:luid/module/example/animations/moives/sliding_card.dart';

List<Movie> movieList = [
  Movie(
      name: '怒火·重案',
      intro:
          '重案组布网围剿国际毒枭，突然杀出一组蒙面悍匪“黑吃黑”，更冷血屠杀众警察。重案组督察张崇邦（甄子丹 饰）亲睹战友被杀，深入追查发现，悍匪首领竟是昔日战友邱刚敖（谢霆锋 饰）。',
      poster: 'assets/example/gondola.jpg',
      date: '2021-07-30',
      price: 19.99),
  Movie(
      name: '沙丘·Dune',
      intro:
          '电影《沙丘》为观众呈现了一段神秘而感人至深的英雄之旅。天赋异禀的少年保罗·厄崔迪被命运指引，为了保卫自己的家族和人民，决心前往’浩瀚宇宙间最危险的星球，开启一场惊心动魄的冒险。与此同时，各路势力为了抢夺这颗星球上一种能够释放人类最大潜力的珍贵资源而纷纷加入战场。最终，唯有那些能够战胜内心恐惧的人才能生存下去。',
      poster: 'assets/example/newdelhi.jpg',
      date: '2021-09-03',
      price: 29.99),
  Movie(
    name: '速度与激情',
    intro:
        '唐老大”多姆·托莱多（范·迪塞尔 饰）与莱蒂（米歇尔·罗德里格兹饰）和他的儿子小布莱恩，过上了远离纷扰的平静生活。然而他们也知道，安宁之下总潜藏着危机。这一次，为了保护他所爱的人，唐老大不得不直面过去。他和伙伴们面临的是一场足以引起世界动荡的阴谋，以及一个前所未遇的一流杀手和高能车手。而这个名叫雅各布（约翰·塞纳 饰）的人，恰巧是多姆遗落在外的亲弟弟。',
    poster: 'assets/example/saopaulo.jpg',
    date: '2021-05-21',
    price: 9.99,
  )
];

class SlidingContainer extends StatefulWidget {
  const SlidingContainer({super.key});

  @override
  State<SlidingContainer> createState() => _SlidingContainerState();
}

class _SlidingContainerState extends State<SlidingContainer> {
  late PageController pageController;
  double pageoffset = 0;

  @override
  void initState() {
    pageController = PageController(viewportFraction: 0.84);
    pageController.addListener(() {
      setState(() => pageoffset = pageController.page!);
    });
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    pageController.dispose();
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.55,
      child: PageView(
        controller: pageController,
        children: List.generate(movieList.length, (index) {
          return SlidingCard(
              offset: pageoffset - index, movie: movieList[index]);
        }),
      ),
    );
  }
}
