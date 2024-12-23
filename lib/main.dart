import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '2x2 Rubik\'s Cube',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const CubeScreen(),
    );
  }
}

class CubeState {
  List<List<Color>> faces = [
    [Colors.red, Colors.red, Colors.red, Colors.red], // Front
    [Colors.blue, Colors.blue, Colors.blue, Colors.blue], // Left
    [Colors.green, Colors.green, Colors.green, Colors.green], // Right
    [Colors.orange, Colors.orange, Colors.orange, Colors.orange], // Back
    [Colors.yellow, Colors.yellow, Colors.yellow, Colors.yellow], // Top
    [Colors.white, Colors.white, Colors.white, Colors.white], // Bottom
  ];

  void rotateFaceClockwise(int faceIndex) {
    List<Color> tempFace = [...faces[faceIndex]];
    faces[faceIndex] = [tempFace[2], tempFace[0], tempFace[3], tempFace[1]];
  }

  void rotateTop() {
    rotateFaceClockwise(4);
    List<Color> topRowFront = [faces[0][0], faces[0][1]];
    List<Color> topRowLeft = [faces[1][0], faces[1][1]];
    List<Color> topRowRight = [faces[2][0], faces[2][1]];
    List<Color> topRowBack = [faces[3][0], faces[3][1]];

    faces[0][0] = topRowLeft[0];
    faces[0][1] = topRowLeft[1];
    faces[1][0] = topRowBack[0];
    faces[1][1] = topRowBack[1];
    faces[2][0] = topRowFront[0];
    faces[2][1] = topRowFront[1];
    faces[3][0] = topRowRight[0];
    faces[3][1] = topRowRight[1];
  }

  void rotateBottom() {
    rotateFaceClockwise(5);
    List<Color> bottomRowFront = [faces[0][2], faces[0][3]];
    List<Color> bottomRowLeft = [faces[1][2], faces[1][3]];
    List<Color> bottomRowRight = [faces[2][2], faces[2][3]];
    List<Color> bottomRowBack = [faces[3][2], faces[3][3]];

    faces[0][2] = bottomRowRight[0];
    faces[0][3] = bottomRowRight[1];
    faces[1][2] = bottomRowFront[0];
    faces[1][3] = bottomRowFront[1];
    faces[2][2] = bottomRowBack[0];
    faces[2][3] = bottomRowBack[1];
    faces[3][2] = bottomRowLeft[0];
    faces[3][3] = bottomRowLeft[1];
  }

  void rotateLeft() {
    rotateFaceClockwise(1);
    List<Color> leftColTop = [faces[4][0], faces[4][2]];
    List<Color> leftColFront = [faces[0][0], faces[0][2]];
    List<Color> leftColBottom = [faces[5][0], faces[5][2]];
    List<Color> leftColBack = [faces[3][3], faces[3][1]];

    faces[4][0] = leftColBack[0];
    faces[4][2] = leftColBack[1];
    faces[0][0] = leftColTop[0];
    faces[0][2] = leftColTop[1];
    faces[5][0] = leftColFront[0];
    faces[5][2] = leftColFront[1];
    faces[3][3] = leftColBottom[0];
    faces[3][1] = leftColBottom[1];
  }

  void rotateRight() {
    rotateFaceClockwise(2);
    List<Color> rightColTop = [faces[4][1], faces[4][3]];
    List<Color> rightColFront = [faces[0][1], faces[0][3]];
    List<Color> rightColBottom = [faces[5][1], faces[5][3]];
    List<Color> rightColBack = [faces[3][2], faces[3][0]];

    faces[4][1] = rightColFront[0];
    faces[4][3] = rightColFront[1];
    faces[0][1] = rightColBottom[0];
    faces[0][3] = rightColBottom[1];
    faces[5][1] = rightColBack[0];
    faces[5][3] = rightColBack[1];
    faces[3][2] = rightColTop[0];
    faces[3][0] = rightColTop[1];
  }

  void rotateFront() {
    rotateFaceClockwise(0);
    List<Color> frontRowTop = [faces[4][2], faces[4][3]];
    List<Color> frontColLeft = [faces[1][1], faces[1][3]];
    List<Color> frontRowBottom = [faces[5][0], faces[5][1]];
    List<Color> frontColRight = [faces[2][0], faces[2][2]];

    faces[4][2] = frontColLeft[1];
    faces[4][3] = frontColLeft[0];
    faces[1][1] = frontRowBottom[0];
    faces[1][3] = frontRowBottom[1];
    faces[5][0] = frontColRight[0];
    faces[5][1] = frontColRight[1];
    faces[2][0] = frontRowTop[1];
    faces[2][2] = frontRowTop[0];
  }

  void rotateBack() {
    rotateFaceClockwise(3);
    List<Color> backRowTop = [faces[4][0], faces[4][1]];
    List<Color> backColLeft = [faces[1][0], faces[1][2]];
    List<Color> backRowBottom = [faces[5][2], faces[5][3]];
    List<Color> backColRight = [faces[2][1], faces[2][3]];

    faces[4][0] = backColRight[0];
    faces[4][1] = backColRight[1];
    faces[1][0] = backRowTop[1];
    faces[1][2] = backRowTop[0];
    faces[5][2] = backColLeft[1];
    faces[5][3] = backColLeft[0];
    faces[2][1] = backRowBottom[1];
    faces[2][3] = backRowBottom[0];
  }
}

class CubeScreen extends StatefulWidget {
  const CubeScreen({Key? key}) : super(key: key);

  @override
  _CubeScreenState createState() => _CubeScreenState();
}

class _CubeScreenState extends State<CubeScreen> {
  CubeState cube = CubeState();

  void rotateTop() {
    setState(() {
      cube.rotateTop();
    });
  }

  void rotateBottom() {
    setState(() {
      cube.rotateBottom();
    });
  }

  void rotateLeft() {
    setState(() {
      cube.rotateLeft();
    });
  }

  void rotateRight() {
    setState(() {
      cube.rotateRight();
    });
  }

  void rotateFront() {
    setState(() {
      cube.rotateFront();
    });
  }

  void rotateBack() {
    setState(() {
      cube.rotateBack();
    });
  }

  Widget buildFace(List<Color> faceColors) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 2.0,
        crossAxisSpacing: 2.0,
      ),
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 4,
      itemBuilder: (context, index) => Container(
        color: faceColors[index],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('2x2 Rubik\'s Cube'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                const Text('Top'),
                SizedBox(
                  height: 100,
                  width: 100,
                  child: buildFace(cube.faces[4]),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    const Text('Left'),
                    SizedBox(
                      height: 100,
                      width: 100,
                      child: buildFace(cube.faces[1]),
                    ),
                  ],
                ),
                Column(
                  children: [
                    const Text('Front'),
                    SizedBox(
                      height: 100,
                      width: 100,
                      child: buildFace(cube.faces[0]),
                    ),
                  ],
                ),
                Column(
                  children: [
                    const Text('Right'),
                    SizedBox(
                      height: 100,
                      width: 100,
                      child: buildFace(cube.faces[2]),
                    ),
                  ],
                ),
                Column(
                  children: [
                    const Text('Back'),
                    SizedBox(
                      height: 100,
                      width: 100,
                      child: buildFace(cube.faces[3]),
                    ),
                  ],
                ),
              ],
            ),
            Column(
              children: [
                const Text('Bottom'),
                SizedBox(
                  height: 100,
                  width: 100,
                  child: buildFace(cube.faces[5]),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(onPressed: rotateTop, child: const Text('Rotate Top')),
                ElevatedButton(onPressed: rotateBottom, child: const Text('Rotate Bottom')),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(onPressed: rotateLeft, child: const Text('Rotate Left')),
                ElevatedButton(onPressed: rotateRight, child: const Text('Rotate Right')),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(onPressed: rotateFront, child: const Text('Rotate Front')),
                ElevatedButton(onPressed: rotateBack, child: const Text('Rotate Back')),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
