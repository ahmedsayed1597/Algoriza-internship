import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'signup.dart';

class signIn extends StatelessWidget {
  const signIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView(children: [
          Container(
            //padding: const EdgeInsets.all(20.0),
            //height: MediaQuery.of(context).size.height * 0.25,
            //width: MediaQuery.of(context).size.width,
            child: const Image(
              fit: BoxFit.cover,
              image: AssetImage("lib/assets/Huawei-Mediapad.jpg"),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(20),
            child: Column(children: [
              const SizedBox(
                height: 10,
              ),
              Row(
                children: const [
                  Text(
                    "Welcom To Fashion Day",
                    textAlign: TextAlign.justify,
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Sign In",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    //textAlign: Alignment.topLeft,
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Row(
                      children: [
                        Text(
                          "Help",
                          style: TextStyle(
                              color: Theme.of(context).primaryColor,
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Container(
                          width: 20,
                          height: 20,
                          decoration: BoxDecoration(
                              color: Theme.of(context).primaryColor,
                              borderRadius: BorderRadius.circular(10)),
                          child: const Center(
                            child: Text(
                              "?",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              counterPicker(),
              const SizedBox(
                height: 20,
              ),
              Container(
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                      //icon: Icon(Icons.lock),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(6)),
                      labelText: "Password:"),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                height: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Theme.of(context).primaryColor,
                ),
                width: double.infinity,
                child: TextButton(
                    onPressed: () {},
                    child: const Text(
                      "Sign In",
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    )),
              ),
              const SizedBox(
                height: 20,
              ),
              const Center(
                child: Text("or"),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.blue),
                  borderRadius: const BorderRadius.all(
                    Radius.circular(15),
                  ),
                ),
                child: TextButton(
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 30,
                        child: Image.asset(
                          "lib/assets/google.png",
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      const Text(
                        "Sign in with google",
                        style: TextStyle(color: Colors.blue, fontSize: 18),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Center(
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  const Text(
                    "Has any Acount?",
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const signUp()),
                      );
                    },
                    child: Text(
                      "Register",
                      style: TextStyle(color: Theme.of(context).primaryColor),
                    ),
                  ),
                ]),
              ),
              const SizedBox(
                height: 20,
              ),
              const Center(
                child: Text("by registering your account you agree to our"),
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  "Terms and Condition",
                  style: TextStyle(color: Theme.of(context).primaryColor),
                ),
              ),
            ]),
          ),
        ]),
      ),
    );
  }
}

Widget counterPicker() {
  return IntlPhoneField(
    decoration: const InputDecoration(
      labelText: 'Phone Number',
      border: OutlineInputBorder(
        borderSide: BorderSide(),
      ),
    ),
    initialCountryCode: 'EG',
    onChanged: (phone) {
      //print(phone.completeNumber);
    },
  );
}
