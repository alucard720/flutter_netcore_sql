import 'package:flutter_netcore_sql/utils/exports.dart';

class welcomescreen extends StatefulWidget {
  const welcomescreen({Key? key}) : super(key: key);

  @override
  State<welcomescreen> createState() => _welcomescreenState();
}

class _welcomescreenState extends State<welcomescreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 44),
          child: Column(
            children: [
              const Image(image: AssetImage("images/img2.png")),
              const SizedBox(
                height: 48,
              ),
              customtext(
                  txt: "Gracias",
                  style: const TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                  )),
              const SizedBox(height: 8),
              customtext(
                  txt: "Bienvenidos al MINERD ",
                  style: const TextStyle(
                      fontSize: 14, fontWeight: FontWeight.normal)),
              const SizedBox(
                height: 60,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 0,
                  horizontal: 15,
                ),
                child: InkWell(
                  child: signupcontainer(st: "vamos"),
                  onTap: () {},
                ),
              )
            ],
          ),
        ),
      )),
    );
  }
}
