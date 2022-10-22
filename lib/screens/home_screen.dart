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
                      txt: "Bienvenido",
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 26,
                      )),
                  const SizedBox(
                    height: 8,
                  ),
                  customtext(
                      txt: "Favor acceda para continuar con la aplicacion",
                      style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 14,
                      )),
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    children: [
                      InkWell(
                        child: inkwellbuttons(
                            image: Image.asset("image/img3.png")),
                      )
                    ],
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
