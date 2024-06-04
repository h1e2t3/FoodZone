import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:testdemo/view/Screens/Login%20&%20signup%20_screens/signUp_Screen.dart';
import '../widget/profile_screen.dart';


class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController username = TextEditingController();
  TextEditingController pass = TextEditingController();
  bool password = true;
  bool error = false;
  String usrname = "";

  void Passwordtoggle() {
    setState(() {
      password = !password;
    });
  }

  void validation() async {
    usrname = username.text;

    SharedPreferences uname = await SharedPreferences.getInstance();

    uname.setString("Username", username.text);
    usrname = uname.getString("Username")!;
    setState(() {
      if (username.text.isEmpty || pass.text.isEmpty) {
        Get.defaultDialog(
          content: const Text("Please Fill All Fields"),
          title: "Oops",
        );
        error = true;
      } else {
        Get.to(() => Profile(
              name: usrname,
            ));
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
            height: Get.height,
            width: Get.width,
            color: Colors.orange,
            alignment: Alignment.topCenter,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  CupertinoIcons.back,
                  color: Colors.white,
                ),
                Text(
                  "Forgot Your Password ?",
                  style: TextStyle(fontSize: 17, color: Colors.white),
                ),
              ],
            ),
          ),
          Container(
            height: Get.height / 1.2,
            width: Get.width,
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(24),
                topRight: Radius.circular(24),
              ),
            ),
            child: Column(
              children: [
                Container(
                  width: Get.width,
                  child: Text(
                    "Let's got something",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  width: Get.width,
                  child: Text(
                    "Good to see you back.",
                    style: TextStyle(fontSize: 16, color: Colors.grey),
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Container(
                  padding: EdgeInsets.only(right: 100),
                  width: Get.width,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: Get.height / 15,
                        width: Get.width / 7,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            image: DecorationImage(
                                image: NetworkImage(
                                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ75Q9EvClA_AXpsxkvrXrLRQS6iLAI-Y_MV9FKjZDSEw&s"),
                                fit: BoxFit.cover)),
                      ),
                      Container(
                        height: Get.height / 15,
                        width: Get.width / 7,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            image: DecorationImage(
                                image: NetworkImage(
                                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSYrgjZVYT0sxSCRszjJuS3WQcAk8MPmHxntLon0awmKw&s"),
                                fit: BoxFit.cover)),
                      ),
                      Container(
                        height: Get.height / 15,
                        width: Get.width / 7,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            image: DecorationImage(
                                image: NetworkImage(
                                    "https://pbs.twimg.com/profile_images/1683507906891718658/ZS9jJfar_400x400.jpg"),
                                fit: BoxFit.cover)),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 30),
                  child: TextField(
                    controller: username,
                    decoration: InputDecoration(
                      prefixIcon: Icon(CupertinoIcons.person),
                      hintText: "Username",
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.orange)),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.orange)),
                    ),
                  ),
                ),
                Container(
                  child: TextField(
                    controller: pass,
                    obscureText: password,
                    decoration: InputDecoration(
                      prefixIcon: Icon(CupertinoIcons.lock),
                      suffixIcon: IconButton(
                          onPressed: Passwordtoggle,
                          icon: password
                              ? Icon(CupertinoIcons.eye)
                              : Icon(CupertinoIcons.eye_slash)),
                      hintText: "Password",
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.orange)),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.orange)),
                    ),
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                CupertinoButton(
                    color: Colors.orange,
                    onPressed: () async {
                      validation();
                    },
                    child: Text("Login")),
                SizedBox(
                  height: 40,
                ),
                Container(
                  width: Get.width,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Don't Have an account?  ",
                        style: TextStyle(fontSize: 18, color: Colors.black),
                      ),
                      GestureDetector(onTap: (){
                        Get.to(()=>Signup());
                      },
                        child: Text("Sign up",
                            style: TextStyle(fontSize: 18, color: Colors.orange)),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
