import 'package:flutter/material.dart';

class HeroAnimation extends StatelessWidget {
  const HeroAnimation({Key? key}) : super(key: key);
  static const String routeName = 'hero_animation';
  void go(context){
    Navigator.push(context, MaterialPageRoute(builder: (context) => const HeroPage()));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Hero Animation"),
      ),
      body: GestureDetector(
        child: Hero(
          tag: "hero_page_c   hild",
          child: _createHeroContainer(
          size: 50.0,
          color: Colors.grey.shade300,
        ),
        ),
        onTap: (){
          go(context);
        },
      ),
    );
  }
}

class HeroPage extends StatelessWidget {
  const HeroPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue,
      appBar: AppBar(),
      body: Center(
        child: Hero(
          tag: 'hero-page-child',
          child: _createHeroContainer(
            size: 100.0,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}

StatelessWidget _createHeroContainer({
  required double size,
  required Color color,
}){
  return Container(
    height: size,
    width: size,
    padding: const EdgeInsets.all(10.0),
    margin: size < 100.0 ? const EdgeInsets.all(10.0) : const EdgeInsets.all(0),
    decoration: BoxDecoration(
      shape: BoxShape.circle,
      color: color,
    ),
    child: const FlutterLogo(),
  );
}

