import 'package:flutter_netcore_sql/utils/exports.dart';

class signupscreen extends StatefulWidget {
  const signupscreen({Key? key}) : super(key: key);

  @override
  State<signupscreen> createState() => _signupscreenState();
}

class _signupscreenState extends State<signupscreen> {
  bool _value = false;

  @override
  Widget build(BuildContext context) {
<<<<<<< HEAD
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
                      txt: "Acceder",
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 26,
                      )),
                  const SizedBox(
                    height: 8,
                  ),
                  customtext(
                      txt: "Por Favor entrar al APP",
                      style: const TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 14,
                      )),
                  const SizedBox(
                    height: 60,
                  ),
                  customtext(
                      txt: "Accede por redes sociales",
                      style: const TextStyle(
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
                      txt: "O por correo",
                      style: const TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 14,
                      )),
                  const SizedBox(height: 30),
                  customtextfield(lone: "Correo", htwo: "Correo"),
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
                        },
                      ),
                      const Text(
                        "Recuerdame",
                        style: TextStyle(
                            fontSize: 13, color: AppColors.kBlackColor),
                      ),
                    ],
                  ),
                  const SizedBox(height: 40),
                  InkWell(
                    child: signupcontainer(st: "Entrar"),
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const welcomescreen()));
                    },
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  InkWell(
                    child: RichText(
                      text: RichTextSpan(
                          one: "ya tienes una cuenta", two: " Acceder"),
=======
    return GestureDetector(
      onTap: () {
        FocusScopeNode currentFocus = FocusScope.of(context);
        if (!currentFocus.hasPrimaryFocus) {
          currentFocus.unfocus();
        }
      },
      child: SafeArea(
        child: Scaffold(
          body: SingleChildScrollView(
              child: Padding(
            padding: const EdgeInsets.only(top: 13),
            child: Center(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 15, horizontal: 5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    customtext(
                        txt: "Acceder",
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 26,
                        )),
                    const SizedBox(
                      height: 8,
>>>>>>> 4827466860648d0482e4070ddbe06ba1cd63f0fd
                    ),
                    customtext(
                        txt: "Por Favor entrar al APP",
                        style: const TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 14,
                        )),
                    const SizedBox(
                      height: 60,
                    ),
                    customtext(
                        txt: "Accede atres redes sociales",
                        style: const TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 14,
                        )),
                    const SizedBox(
                      height: 30,
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
                      height: 50,
                    ),
                    customtext(
                        txt: "o Acceder por correo",
                        style: const TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 14,
                        )),
                    const SizedBox(height: 30),
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
                              "Recuerdame",
                              style: TextStyle(
                                  fontSize: 13, color: AppColors.kBlackColor),
                            );
                          },
                        ),
                      ],
                    ),
                    const SizedBox(height: 40),
                    InkWell(
                      child: signupcontainer(st: "ENTRAR"),
                      onTap: () {},
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    InkWell(
                      child: RichText(
                        text: RichTextSpan(
                            one: "Ya tienes una cuenta?", two: " Acceder"),
                      ),
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const loginscreen()));
                      },
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        IconButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const HomeScreen()));
                          },
                          icon: Icon(Icons.arrow_back_rounded),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          )),
        ),
      ),
    );
  }
}
