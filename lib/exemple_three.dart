// import 'package:composants/exemple_one.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:glassmorphism/glassmorphism.dart';
import 'package:google_fonts/google_fonts.dart';

class ExampleThree extends StatelessWidget {
  const ExampleThree({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ConnexionForm(),
    );
  }
}

class ConnexionForm extends StatefulWidget {
  const ConnexionForm({super.key});

  @override
  State<ConnexionForm> createState() => _ConnexionFormState();
}

class _ConnexionFormState extends State<ConnexionForm>
    with WidgetsBindingObserver {
  bool _isImageVisible = true;
  GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();
  FocusNode pseudoFocusNode = FocusNode();
  FocusNode passwordFocusNode = FocusNode();
  TextEditingController pseudoController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    passwordFocusNode.addListener(_onFocusChanged);
    pseudoFocusNode.addListener(_onFocusChanged);
  }

  void _onFocusChanged() {
    setState(() {
      if (pseudoFocusNode.hasFocus || passwordFocusNode.hasFocus) {
        _isImageVisible = false;
      } else {
        _isImageVisible = true;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return SafeArea(
      child: Container(
        height: size.height,
        width: size.width,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.bottomLeft,
            end: Alignment.topRight,
            colors: [
              Color(0xFFbfc8ad),
              Color(0xFF90b494),
              Color(0xFF718f94),
            ],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: SingleChildScrollView(
            child: Form(
              key: loginFormKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: _isImageVisible
                        ? size.height * 0.1
                        : size.height * 0.05,
                  ),
                  GlassmorphicContainer(
                    width: _isImageVisible ? 200 : 150,
                    height: _isImageVisible ? 200 : 150,
                    borderRadius: 60,
                    blur: 20,
                    alignment: Alignment.bottomCenter,
                    border: 2,
                    linearGradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          const Color(0xFFffffff).withOpacity(0.1),
                          const Color(0xFFFFFFFF).withOpacity(0.05),
                        ],
                        stops: const [
                          0.1,
                          1,
                        ]),
                    borderGradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        const Color(0xFF718f94).withOpacity(0.5),
                        const Color(0xFF718f94).withOpacity(0.5),
                      ],
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(size.width * 0.07),
                      child: Container(
                        height: 150,
                        width: 150,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: const Icon(
                          CupertinoIcons.person_alt_circle,
                          size: 100,
                          color: Color(0xFF048594),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: size.height * 0.04),
                  RichText(
                    text: const TextSpan(
                      text: 'Flutter',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                      ),
                      children: [
                        TextSpan(
                          text: 'Login',
                          style: TextStyle(
                            color: Color(0xFF048594),
                            fontSize: 35,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Page de connexion Flutter",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: size.height * 0.05),
                  CustomTextFormField(
                    label: 'Pseudo',
                    icon: CupertinoIcons.person_2_fill,
                    focusNode: pseudoFocusNode,
                    inputController: pseudoController,
                  ),
                  SizedBox(height: size.height * 0.02),
                  CustomTextFormField(
                    label: 'Mot de passe',
                    icon: CupertinoIcons.lock,
                    focusNode: passwordFocusNode,
                    inputController: passwordController,
                  ),
                  SizedBox(height: size.height * 0.02),
                  SizedBox(
                    width: size.width * 0.7,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.white,
                        backgroundColor: const Color(0xFF048594),
                        elevation: 5,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50),
                        ),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 10),
                      ),
                      child: Text(
                        "CONNEXION",
                        style: GoogleFonts.raleway(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField(
      {super.key,
      required this.label,
      required this.icon,
      required this.focusNode,
      required this.inputController});
  final String label;
  final IconData icon;
  final FocusNode focusNode;
  final TextEditingController inputController;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return GlassmorphicContainer(
      width: size.width * 0.85,
      height: 50,
      borderRadius: 60,
      blur: 20,
      alignment: Alignment.bottomCenter,
      border: 2,
      linearGradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            const Color(0xFFffffff).withOpacity(0.1),
            const Color(0xFFFFFFFF).withOpacity(0.05),
          ],
          stops: const [
            0.1,
            1,
          ]),
      borderGradient: LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [
          const Color(0xFFffffff).withOpacity(0.5),
          const Color((0xFFFFFFFF)).withOpacity(0.5),
        ],
      ),
      child: TextFormField(
        focusNode: focusNode,
        controller: inputController,
        expands: true,
        maxLines: null,
        textAlignVertical: TextAlignVertical.center,
        textAlign: TextAlign.center,
        decoration: InputDecoration(
          hintText: label,
          hintStyle: GoogleFonts.raleway(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
          // prefixIconConstraints: const BoxConstraints.expand(),
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
            borderRadius: BorderRadius.all(Radius.circular(60)),
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
            borderRadius: BorderRadius.all(Radius.circular(60)),
          ),
          contentPadding:
              const EdgeInsets.symmetric(vertical: 10, horizontal: 45),
          prefixIcon: Container(
            decoration: const BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
            ),
            child: Icon(
              icon,
              color: const Color(0xFF048594),
            ),
          ),
        ),
      ),
    );
  }
}
