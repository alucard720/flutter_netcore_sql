import 'package:flutter_netcore_sql/utils/exports.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
            child: Padding(
          padding: const EdgeInsets.only(top: 13),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  customtext(
                      txt: "Bienvenidos",
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 26,
                      )),
                  const SizedBox(
                    height: 8,
                  ),
                  customtext(
                      txt: "Favor acceder para continuar con la Aplicacion",
                      style: const TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 14,
                      )),
                  const SizedBox(
                    height: 30,
                  ),
                  Image.asset("images/Logo.png"),
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    children: [
                      InkWell(
                        child: inkwellbuttons(
                            image: Image.asset("images/img3.png")),
                        onTap: () {},
                      ),
                      const SizedBox(width: 37),
                      InkWell(
                        child: inkwellbuttons(
                            image: Image.asset("images/img4.png")),
                        onTap: () {},
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  customtext(
                      txt: "o acceda con el correo",
                      style: const TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 14,
                      )),
                  const SizedBox(
                    height: 50,
                  ),
                  InkWell(
                    child: signupcontainer(st: "Acceder"),
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const loginscreen()));
                    },
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  InkWell(
                    child: RichText(
                      text: RichTextSpan(
                          one: "No tiene cuenta", two: "  Acceder Aqui"),
                    ),
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const signupscreen()));
                    },
                  )
                ],
              ),
            ),
          ),
        )),
      ),
    );
  }
}
