// import 'package:composants/exemple_one.dart';
// import 'package:composants/generated/assets.dart';
import 'package:flutter/material.dart';

class ExampleTwo extends StatelessWidget {
  const ExampleTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xFF121212),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ShowBanner(),
            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  FirstText(),
                  SizedBox(height: 20),
                  SecondText(),
                  SizedBox(height: 20),
                  ImageTextRow(),
                  SizedBox(height: 20),
                  ShowTextTwo(),
                  SizedBox(height: 20),
                  ShowIconsAndLabels(),
                  SizedBox(height: 20),
                  ShowTwoImages(),
                  SizedBox(height: 20),
                  ShowButtonTwo(),
                  SizedBox(height: 20),
                  ShowForm(),
                  SizedBox(height: 20)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ShowBanner extends StatelessWidget {
  const ShowBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return const Image(
      image: AssetImage(
        "assets/images/banner.jpg",
      ),
    );
  }
}

class FirstText extends StatelessWidget {
  const FirstText({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Free Fast Food',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Color(0xFFFFFFFF),
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}

class SecondText extends StatelessWidget {
  const SecondText({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'FFF',
          textAlign: TextAlign.justify,
          style: TextStyle(
            color: Color(0xFFFFFFFF),
            fontSize: 19,
          ),
        ),
      ],
    );
  }
}

class ImageTextRow extends StatelessWidget {
  const ImageTextRow({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Column(
          children: [
            Image(
              image: AssetImage(
                "assets/images/image1.jpg",
              ),
              width: 150,
              height: 300,
              fit: BoxFit.cover,
            ),
          ],
        ),
        Expanded(
          flex: 2,
          child: Padding(
            padding: EdgeInsets.only(left: 10),
            child: Text(
              "So many food disponible for you, you can order and get it in 30 minutes. Just try it and you will see. This is an app for fast food,there is many food disponible for you, you can order and get it in 30 minutes. What are you waiting for ? Just try it and you will see. What are you waiting for ? Just try it and you will see. What are you waiting for ?",
              textAlign: TextAlign.justify,
              style: TextStyle(
                color: Color(0xFFFFFFFF),
                fontSize: 14,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class ShowTextTwo extends StatelessWidget {
  const ShowTextTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Text(
          "Do you want to know more about us?",
          style: TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
          softWrap: true,
        ),
        Text(
          "Just slide below to find out more !",
          style: TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
          softWrap: true,
        ),
      ],
    );
  }
}

class ShowIconsAndLabels extends StatelessWidget {
  const ShowIconsAndLabels({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              Icons.food_bank,
              color: Colors.orange,
            ),
            Text(
              "Food",
              style: TextStyle(
                fontSize: 14,
                color: Colors.white,
              ),
            )
          ],
        ),
        Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              Icons.local_pizza,
              color: Colors.orange,
            ),
            Text(
              "Pizza",
              style: TextStyle(
                fontSize: 14,
                color: Colors.white,
              ),
            )
          ],
        ),
        Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              Icons.delivery_dining,
              color: Colors.orange,
            ),
            Text(
              "Delivery",
              style: TextStyle(
                fontSize: 14,
                color: Colors.white,
              ),
            )
          ],
        ),
      ],
    );
  }
}

class ShowTwoImages extends StatelessWidget {
  const ShowTwoImages({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Expanded(
          flex: 1,
          child: Image.asset(
            "assets/images/image1.jpg",
          ),
        ),
        SizedBox(
          width: 20,
        ),
        Expanded(
          flex: 1,
          child: Image.asset(
            "assets/images/image1.jpg",
          ),
        ),
      ],
    );
  }
}

class ShowButtonTwo extends StatelessWidget {
  const ShowButtonTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: const ButtonStyle(
        backgroundColor: MaterialStatePropertyAll(Colors.white),
        shape: MaterialStatePropertyAll<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
          ),
        ),
      ),
      child: const Text(
        "Voir plus",
        style: TextStyle(
            color: Colors.orange, fontSize: 16, fontWeight: FontWeight.bold),
      ),
    );
  }
}

class ShowForm extends StatelessWidget {
  const ShowForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            children: [
              Expanded(
                flex: 8,
                child: TextFormField(
                  decoration: const InputDecoration(
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    prefixIcon: Icon(
                      Icons.mail,
                      color: Colors.white,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.white,
                        width: 2,
                        style: BorderStyle.solid,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.white,
                        width: 2,
                        style: BorderStyle.solid,
                      ),
                    ),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.white,
                        width: 2,
                        style: BorderStyle.solid,
                      ),
                    ),
                    label: Text(
                      "Email",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Expanded(
                flex: 8,
                child: TextFormField(
                  decoration: const InputDecoration(
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.white,
                        width: 2,
                        style: BorderStyle.solid,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.white,
                        width: 2,
                        style: BorderStyle.solid,
                      ),
                    ),
                    prefixIcon: Icon(
                      Icons.message,
                      color: Colors.white,
                    ),
                    label: Text(
                      "Message",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          ElevatedButton(
            onPressed: () {},
            style: const ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(Colors.white),
              shape: MaterialStatePropertyAll<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
              ),
            ),
            child: const Text(
              "Contacter",
              style: TextStyle(
                color: Colors.orange,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          )
        ],
      ),
    );
  }
}
