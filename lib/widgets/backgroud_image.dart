import 'package:flutter/material.dart';

class Backgroudimage extends StatelessWidget {
  const Backgroudimage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (bounds)=>const LinearGradient(
        colors: [Colors.black, Colors.black12],
        begin: Alignment.bottomCenter,
        end: Alignment.center
      ).createShader(bounds),
      blendMode:BlendMode.darken,
      child: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/Anh_login.jpg'),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(Colors.black45,
            BlendMode.darken),
    
          ),
        ),
      ),
    );
  }
}
class BackgroudimageRE extends StatelessWidget {
  const BackgroudimageRE({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (bounds)=>const LinearGradient(
        colors: [Colors.black, Colors.black12],
        begin: Alignment.bottomCenter,
        end: Alignment.center
      ).createShader(bounds),
      blendMode:BlendMode.darken,
      child: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/register.jpg'),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(Colors.black45,
            BlendMode.darken),
    
          ),
        ),
      ),
    );
  }
}