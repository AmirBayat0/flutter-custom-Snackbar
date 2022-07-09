//CodeWithFlexz on Instagram

//AmirBayat0 on Github
//Programming with Flexz on Youtube

import 'package:flutter/material.dart';
import 'package:flutter_custom_snackbar/snackbars.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FinalView(),
    );
  }
}

class FinalView extends StatefulWidget {
  const FinalView({Key? key}) : super(key: key);

  @override
  State<FinalView> createState() => _FinalViewState();
}

class _FinalViewState extends State<FinalView> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 47, 47, 47),
        centerTitle: true,
        title: const Text("Custom Snackbar"),
      ),
      backgroundColor: const Color.fromARGB(255, 37, 37, 37),
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            /// Failure
            MaterialButton(
              color: const Color(0xffc72c41),
              onPressed: () {
                ScaffoldMessenger.of(context)
                    .showSnackBar(MySnackBars.failureSnackBar);
              },
              child: const Text(
                "Open SnackBar - 🔴 Failure ",
                style: TextStyle(color: Colors.white),
              ),
            ),

            /// Help
            MaterialButton(
              color: const Color(0xff3282B8),
              onPressed: () {
                ScaffoldMessenger.of(context)
                    .showSnackBar(MySnackBars.helpSnackBar);
              },
              child: const Text(
                "Open SnackBar - ❔ Help ",
                style: TextStyle(color: Colors.white),
              ),
            ),

            /// Success
            MaterialButton(
              color: const Color(0xff2D6A4F),
              onPressed: () {
                ScaffoldMessenger.of(context)
                    .showSnackBar(MySnackBars.successSnackBar);
              },
              child: const Text(
                "Open SnackBar - ✅ Success ",
                style: TextStyle(color: Colors.white),
              ),
            ),

            /// Warning
            MaterialButton(
              color: const Color(0xffFCA652),
              onPressed: () {
                ScaffoldMessenger.of(context)
                    .showSnackBar(MySnackBars.warningSnackBar);
              },
              child: const Text(
                "Open SnackBar - ⚠ Warning",
                style: TextStyle(color: Colors.white),
              ),
            ),

            ///
            // const SizedBox(
            //   height: 180,
            // ),

            // ///
            // const Padding(
            //   padding: EdgeInsets.only(bottom: 15),
            //   child: Text(
            //     "CodewithFlexz",
            //     style: TextStyle(
            //         color: Colors.white30,
            //         fontWeight: FontWeight.w300,
            //         fontSize: 22),
            //   ),
            // ),
          ],
        ),
      ),
    ));
  }
}
