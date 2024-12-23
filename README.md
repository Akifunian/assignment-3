[![Review Assignment Due Date](https://classroom.github.com/assets/deadline-readme-button-22041afd0340ce965d47ae6ef1cefeee28c7c493a6346c4f15d667ab976d596c.svg)](https://classroom.github.com/a/6l4sY1d2)
# Assignment 3: Play with a 2x2 Rubik Cube
by 

**NAME**: MOHAMAD AKIF HAKIMI BIN MOHD AZMI

**Matric ID**: 2218467

## Objective

1. Accept the assignment and make sure you have a copy of the code.
2. The code provide a partially working code.
3. Add the necessary faces of the rubik cube in the code.
4. Modify the logic for rotating the 2x2 cube.
5. Add buttons below the cube to create action buttons.
6. Create a simple 2x2 rubik cube application that allows the user to rotate the faces of a rubik cube. The code given doesn't work. You may have to read the code and complete some functions and add buttons.
7. Make sure to only submit your /lib folder and modify the readme to describe what was done. You must also include your name and matric ID in this readme file.

What was done
1.Added Missing Faces:
Included a Back face in the rendering and logic.
Ensured all six faces (Front, Back, Left, Right, Top, Bottom) are displayed correctly.

2.Color Corrections:
Updated the Top face color to yellow and Back face to orange for alignment with a typical Rubik's Cube.

3.Implemented Rotation Logic:
Provided separate functions for rotating all six faces (Top, Bottom, Left, Right, Front, Back).
Adjusted adjacent rows or columns of other faces accordingly.

4.Utility Function for Clockwise Rotation:
Added a helper method rotateFaceClockwise(int faceIndex) to simplify rotation logic.

5.Buttons for All Rotations:
Created buttons to trigger rotations of each face (Top, Bottom, Left, Right, Front, and Back).

6.Fixed State Updates:
Wrapped rotation functions in setState to ensure the UI updates after a rotation.

7.Grid Representation:
Used a GridView.builder to render individual cells of each face dynamically.

8.Enhanced Layout:
Properly aligned and grouped the cube faces and buttons for a better user experience.
## Requirements:

Tips:
Make sure to look at https://docs.flutter.dev/cookbook/lists/grid-lists to get a hang of the flutter grid layout which is being used in the code.
