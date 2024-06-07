import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../Model/container_list.dart';
import '../../../Widgets/Common/radiobutton.dart';
import '../Login & signup _screens/Login_screen.dart';
import 'Prim_screen.dart';
import 'homepage2.dart';

class Profile extends StatefulWidget {
  final String? name;

  const Profile({super.key, this.name});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  int foodindx = -1;
  File? _image;
  String name = '';
  getName()async{
    SharedPreferences userName = await SharedPreferences.getInstance();
    setState(() {
      name = userName.getString("Username")!;
    });
  }

  @override
  void initState() {
    getName();

    super.initState();
  }
  Future<void> _pickImage(ImageSource source) async {
    final picker = ImagePicker();
    final pickedFile = await picker.pickImage(source: source);

    if (pickedFile != null) {
      setState(() {
        _image = File(pickedFile.path);
      });
    } else {
      print('No image selected.');
    }
  }


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            const SizedBox(
              height: 15,
            ),
            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Home11()));
                  },
                  child: const Icon(
                    Icons.arrow_back_outlined,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  const SizedBox(
                    height: 15,
                  ),
                  Container(
                    height: Get.height / 3.8,
                    width: Get.width,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              spreadRadius: 2,
                              blurRadius: 8,
                              offset: const Offset(2, 3),
                              blurStyle: BlurStyle.normal,
                              color: Colors.black.withOpacity(.30)),
                        ],
                        borderRadius: BorderRadius.circular(13)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 10, horizontal: 10),
                          child: Row(
                            children: [
                              CircleAvatar(
                                radius: 40,
                                backgroundColor: Colors.blue.withOpacity(0.30),
                                child: _image == null
                                    ? Center(
                                        child: CupertinoButton(
                                          onPressed: () =>
                                              _pickImage(ImageSource.camera),
                                          child:
                                              const Icon(CupertinoIcons.camera),
                                        ),
                                      )
                                    : ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(50),
                                        child: Image.file(
                                          _image!,
                                          fit: BoxFit.cover,
                                          height: 100,
                                          width: 100,
                                        ),
                                      ),
                              ),
                              const SizedBox(
                                width: 15,
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    name,
                                    style: const TextStyle(fontSize: 26),
                                  ),
                                  SizedBox(
                                    height: Get.height / 20,
                                  ),
                                  const Text(
                                    "View actvity ->",
                                    style: TextStyle(
                                        fontSize: 16, color: Colors.red),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Prim()));
                          },
                          child: Container(
                            padding: const EdgeInsets.symmetric(horizontal: 8),
                            alignment: Alignment.center,
                            height: Get.height / 10.2,
                            width: Get.width,
                            decoration: const BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(13),
                                    bottomRight: Radius.circular(13))),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Icon(
                                  Icons.workspace_premium,
                                  size: 30,
                                  color: Colors.amber.shade300,
                                ),
                                Text(
                                  "Renew Your Gold Membership",
                                  style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.orange.shade100),
                                ),
                                Icon(
                                  Icons.keyboard_arrow_right,
                                  color: Colors.orange.shade100,
                                  size: 29,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const fav(),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(13),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            spreadRadius: 2,
                            blurRadius: 8,
                            offset: const Offset(2, 3),
                            blurStyle: BlurStyle.normal,
                            color: Colors.black.withOpacity(.30)),
                      ],
                    ),
                    child: Column(
                      children: [
                        const Row(
                          children: [],
                        ),
                        ListView.builder(
                          itemCount: icons.length,
                          shrinkWrap: true,
                          itemBuilder: (BuildContext context, int index) {
                            return Container(
                              height: Get.height / 17,
                              width: Get.width,
                              padding: const EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 10),
                              child: InkWell(
                                onTap: () {
                                  foodindx = index;
                                  setState(() {});
                                  if (foodindx == 0) {
                                    // Navigator.push(
                                    //     context,
                                    //     MaterialPageRoute(
                                    //         builder: (context) =>
                                    //             const Favourite(text:"text")));
                                  } else if (foodindx == 1) {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const Prim()));
                                  }
                                },
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Icon(icons[index]),
                                    Text(
                                      foodorder_list[index],
                                      style: const TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    const Icon(CupertinoIcons.right_chevron,
                                        size: 20)
                                  ],
                                ),
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  CupertinoButton(
                      color: Colors.orange,
                      child: const Text("Logout"),
                      onPressed: () {
                        Get.to(const Login());
                      })
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
