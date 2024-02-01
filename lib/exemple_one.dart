import 'package:flutter/material.dart';

class ExampleOne extends StatelessWidget {
  const ExampleOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Composant'),
        elevation: 22,
      ),
      body: const SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 22),
            ShowText(),
            // SizedBox(height: 22),
            // ShowImage(),
            // ShowIcon(),
            ShowButton()
          ],
        ),
      ),
    );
  }
}

class ShowText extends StatelessWidget {
  const ShowText({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Welcome to this course with Trusty!',
      textAlign: TextAlign.center,
      style: TextStyle(
        color: Color(0xFF048594),
        fontSize: 22,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}

class ShowImage extends StatelessWidget {
  const ShowImage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Image(
      image: AssetImage('assets/images/image1.jpg'),
    );
  }
}

class ShowIcon extends StatelessWidget {
  const ShowIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return const Icon(
      Icons.favorite,
      color: Color(0xFFED97D4),
      size: 400,
    );
  }
}

class ShowButton extends StatelessWidget {
  const ShowButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        foregroundColor: Colors.white,
        backgroundColor: const Color(0xFF048594),
        textStyle: const TextStyle(
          color: Colors.white,
          fontSize: 22,
          fontWeight: FontWeight.bold,
        ),
        elevation: 2,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(22),
          ),
        ),
      ),
      onPressed: () {},
      child: const Text('Yamete kudasai!'),
    );
  }
}
