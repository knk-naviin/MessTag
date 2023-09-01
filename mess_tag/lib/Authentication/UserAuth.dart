import 'package:flutter/material.dart';
import 'package:mess_tag/HostelerUi.dart';

import 'auth_manager.dart';

class UserAuth extends StatefulWidget {
  const UserAuth({super.key});

  @override
  State<UserAuth> createState() => _UserAuthState();
}

class _UserAuthState extends State<UserAuth> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          const SizedBox(
            height: 200,
          ),
          // Padding(
          //   padding: const EdgeInsets.all(8.0),
          //   child: Align(
          //       alignment: Alignment.topCenter,
          //       child: Image.asset(
          //         "assets/images/logo_circular.png",
          //         scale: 3,
          //       )),
          // ),
          // Image.asset(
          //   "assets/images/splash_text.png",
          //   scale: 4,
          // ),
          // Padding(
          //   padding: const EdgeInsets.only(top: 28.0),
          //   child: SizedBox(
          //     width: 170,
          //     height: 50,
          //     child: InkWell(
          //         splashColor: Colors.blue,
          //         onTap: () {
          //           signInWithGoogle()
          //               .then((value) =>
          //           {
          //             Navigator.pushReplacement(
          //                 context, MaterialPageRoute(builder: (
          //                 context) => const HostelerUi()))
          //                 .catchError((onError) {
          //             })
          //             // Navigator.push(
          //             //   context,
          //             //   MaterialPageRoute(builder: (context) => const Dashboard()),
          //           }
          //           );
          //         },
          //         borderRadius: BorderRadius.circular(10),
          //         child: Row(
          //           mainAxisAlignment: MainAxisAlignment.center,
          //           children: [
          //             Image.asset(
          //               "assets/glogo.png",
          //               scale: 9,
          //             ),
          //             Text(
          //               "Google Sign in",
          //               style: TextStyle(color: Colors.grey.shade700),
          //             )
          //           ],
          //         )),
          //   ),
          // ),
          ElevatedButton(onPressed: (){
            signInWithGoogle()
                .then((value) =>
            {
              Navigator.pushReplacement(
                  context, MaterialPageRoute(builder: (
                  context) => const HostelerUi()))
                  .catchError((onError) {
              })
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(builder: (context) => const Dashboard()),
            }
            );
          }, child: Text("Google Sign in"))
        ],
      ),
    );
  }
}
