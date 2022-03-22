import 'package:flutter/material.dart';

bool checked = false;

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(255, 216, 29, 1),
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(255, 216, 29, 1),
        elevation: 0,
        title: Row(
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.arrow_back),
              color: Colors.black,
            ),
            Text(
              "Back",
              style: TextStyle(color: Colors.black, fontSize: 14),
            )
          ],
        ),
        actions: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 30, 0),
                child: Text(
                  "Login",
                  style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                      fontWeight: FontWeight.w500),
                ),
              )
            ],
          )
        ],
      ),
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(40),
                      topLeft: Radius.circular(40)),
                ),
                child: Padding(
                  padding: EdgeInsets.fromLTRB(40, 20, 40, 80),
                  child: Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white, width: 4),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: const CircleAvatar(
                          backgroundImage: NetworkImage(
                              'https://images.pexels.com/photos/2269872/pexels-photo-2269872.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'),
                          radius: 35,
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
                        child: Text(
                          "Welcome!",
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.w700),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                        child: TextFormField(
                          style:
                              TextStyle(color: Color.fromRGBO(214, 161, 85, 1)),
                          decoration: const InputDecoration(
                              enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Color.fromRGBO(214, 161, 85, 1))),
                              focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Color.fromRGBO(214, 161, 85, 1))),
                              border: UnderlineInputBorder(),
                              labelText: 'Username',
                              labelStyle: TextStyle(color: Colors.grey)),
                          cursorColor: Color.fromRGBO(214, 161, 85, 1),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                        child: TextFormField(
                          obscureText: true,
                          enableSuggestions: false,
                          autocorrect: false,
                          style:
                              TextStyle(color: Color.fromRGBO(214, 161, 85, 1)),
                          decoration: const InputDecoration(
                              enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Color.fromRGBO(214, 161, 85, 1))),
                              focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Color.fromRGBO(214, 161, 85, 1))),
                              border: UnderlineInputBorder(),
                              labelText: 'Password',
                              labelStyle: TextStyle(color: Colors.grey)),
                          cursorColor: Color.fromRGBO(214, 161, 85, 1),
                        ),
                      ),
                      Row(
                        children: [
                          Checkbox(
                            value: checked,
                            materialTapTargetSize:
                                MaterialTapTargetSize.shrinkWrap,
                            onChanged: (value) {},
                            activeColor: Colors.red,
                            checkColor: Colors.white,
                          ),
                          Text(
                            "Save password",
                            style: TextStyle(
                                color: Color.fromRGBO(214, 161, 85, 1)),
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 40, 0, 40),
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Text("LOGIN"),
                          style: ElevatedButton.styleFrom(
                              minimumSize: Size.fromHeight(50),
                              primary: Color.fromRGBO(255, 140, 0, 1)),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(
                            "Don't have an account ? ",
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                          ),
                          Text(
                            " Sign up",
                            style: TextStyle(
                                color: Color.fromRGBO(214, 161, 85, 1),
                                decoration: TextDecoration.underline),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
