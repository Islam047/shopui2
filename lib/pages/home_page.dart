import 'package:flutter/material.dart';

import '../utils/Strings.dart';
import 'home_assignment.dart';



class HomeAssignmentFour extends StatefulWidget {
  static const String id = '/home_assignment_four';

  const HomeAssignmentFour({Key? key}) : super(key: key);

  @override
  State<HomeAssignmentFour> createState() => _HomeAssignmentFourState();
}

class _HomeAssignmentFourState extends State<HomeAssignmentFour> {
  PageController? _controller;
  int _index = 0;

  @override
  void initState() {
    super.initState();
    _controller = PageController();
  }

  @override
  void dispose() {
    super.dispose();
    _controller!.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(top: 20,right: 20,left: 20),
        child: Stack(
          alignment: Alignment.bottomRight,
          children: [
            PageView(
              controller: _controller,
              onPageChanged: (int index) {
                setState(() {
                  _index = index;
                });
              },
              children: [
                makePage(
                    image: 'assets/images/img_6.png',
                    title: Strings.stepOneTitle,
                    content: Strings.stepOneContent,
                    toShow: false
                ),
                makePage(
                    image: 'assets/images/img_7.png',
                    title: Strings.stepTwoTitle,
                    content: Strings.stepTwoContent,
                    toShow: false
                ),
                makePage(
                    image: 'assets/images/img_8.png',
                    title: Strings.stepThreeTitle,
                    content: Strings.stepThreeContent,
                    toShow: true
                ),
              ],
            ),
            Container(
              margin: const EdgeInsets.only(top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: listChooser(),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget makePage({image, title, content, toShow}) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(
            title,
            style: const TextStyle(
              color: Colors.redAccent,
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 25,),
          Text(
            content,
            style: TextStyle(
              color: Colors.grey.shade400,
              fontSize: 20,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 30,
          ),
          Image(
            image: AssetImage(image),
          ),
          const SizedBox(
            height: 75,
          ),
          toShow ?   Row(

            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(
                    context,
                    FourHomeAssignment.id,
                  );
                },
                child: const Text(
                  'Skip',
                  style: TextStyle(color: Colors.redAccent, fontSize: 20),
                ),
              ),
            ],
          ) : const SizedBox.shrink(),
          const SizedBox(
            height: 30,
          ),
        ],
      );
  }

  Widget pageRunner(bool isTrue) {
    return AnimatedContainer(

      duration: const Duration(milliseconds: 200),
      width: isTrue ? 30 : 6,
      height: 5,
      margin: const EdgeInsets.only(left: 10,bottom: 20),
      decoration: BoxDecoration(
        color: Colors.redAccent,
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }

  List<Widget> listChooser() {
    List<Widget> result = [];
    for (int i = 0; i < 3; i++) {
      if (i == _index) {
        result.add(
          pageRunner(true),
        );
      } else {
        result.add(
          pageRunner(false),
        );
      }
    }
    return result;
  }
}

