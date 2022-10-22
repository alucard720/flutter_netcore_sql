import 'package:flutter_netcore_sql/utils/exports.dart';

class loginscreen extends StatefulWidget {
  const loginscreen({Key? key}) : super(key: key);

  @override
  State<loginscreen> createState() => _loginscreenState();
}

class _loginscreenState extends State<loginscreen> {
  bool _value = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
            child: Padding(
                padding: const EdgeInsets.only(top: 13),
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 15, horizontal: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        customtext(
                            txt: "acceder ahora",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 26,
                            )),
                        const SizedBox(
                          height: 8,
                        ),
                        customtext(
                            txt: "Porfavor acceder para continuar",
                            style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 24,
                            )),
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
                            txt: "o acceder con correo",
                            style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 14,
                            )),
                        const SizedBox(
                          height: 30,
                        ),
                        const SizedBox(height: 20),
                        customtextfield(lone: "Email", htwo: "Email"),
                        const SizedBox(height: 20),
                        customtextfield(lone: "Password", htwo: "Password"),
                        const SizedBox(height: 20),
                        Row(
                          children: [
                            Checkbox(
                              value: _value,
                              onChanged: (newValue) {
                                setState(() {
                                  _value = newValue!;
                                });
                                const Text(
                                  "Recordarme",
                                  style: TextStyle(
                                      fontSize: 13,
                                      color: AppColors.kBlackColor),
                                );
                              },
                            ),
                            Spacer(),
                            const TextButton(
                              onPressed: null,
                              child: Text(
                                "Olvide Contrasena",
                                style: TextStyle(
                                  fontSize: 15,
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 40),
                        InkWell(
                          child: signupcontainer(st: "Acceder"),
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => const WelcomeScreen()));
                          },
                        ),
                        const SizedBox(
                          height: 50,
                        ),
                        InkWell(
                          child: RichText(
                            text: RichTextSpan(
                                one: "No tienes Cuenta?",
                                two: "Registrate aqui"),
                          ),
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => const signupscreen()));
                          },
                        )
                      ],
                    ),
                  ),
                ))),
      ),
    );
  }
}
