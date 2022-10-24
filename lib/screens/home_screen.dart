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
          padding: const EdgeInsets.only(top: 25),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  const SizedBox(
                    height: 40,
                  ),
                  Image.asset("images/Logo.png"),
                  const SizedBox(
                    height: 60,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
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
                    height: 60,
                  ),
                  customtext(
                      txt: "o acceda con el correo",
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                      )),
                  SizedBox(
                    height: 50,
                  ),
                  InkWell(
                    child: signupcontainer(st: "Acceder"),
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const signupscreen()));
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
                          builder: (context) => loginscreen()));
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
