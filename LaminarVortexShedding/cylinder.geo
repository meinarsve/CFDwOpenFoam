// Gmsh project created on Wed Sep 30 21:41:07 2015
// Author: Martin Einarsve
Nx1 = 41; Rx1 = 1.00;
Nx2 = 81; Rx2 = 1.00;
Ny1 = 41; Ry1 = 1.00;
Ni  = 61; Ri  = 0.93;
Nc  = 41; Rc  = 1.00;

Point(1) = {-5, -7, 0, 1.0};
Point(2) = {5, -7, 0, 1.0};
Point(3) = {30, -7, 0, 1.0};

Point(4) = {-0.353553391, -0.353553391, 0, 1.0};
Point(5) = {0.353553391, -0.353553391, 0, 1.0};
Point(6) = {-0.353553391, 0.353553391, 0, 1.0};
Point(7) = {0.353553391, 0.353553391, 0, 1.0};

Point(8) = {-5, 7, 0, 1.0};
Point(9) = {5, 7, 0, 1.0};
Point(10) = {30, 7, 0, 1.0};
Point(11) = {0, 0, 0, 1.0};

Line(1) = {1, 2};  Transfinite Line {1}  = Nx1 Using Progression Rx1;
Line(2) = {2, 3};  Transfinite Line {2}  = Nx2 Using Progression Rx2;
Line(3) = {8, 9};  Transfinite Line {3}  = Nx1 Using Progression Rx1;
Line(4) = {9, 10}; Transfinite Line {4}  = Nx2 Using Progression Rx2;
Line(5) = {1, 8};  Transfinite Line {5}  = Ny1 Using Bump Ry1;
Line(6) = {2, 9};  Transfinite Line {6}  = Ny1 Using Bump Ry1;
Line(7) = {3, 10}; Transfinite Line {7}  = Ny1 Using Bump Ry1;
Line(8) = {1, 4};  Transfinite Line {8}  = Ni Using Progression Ri;
Line(9) = {2, 5};  Transfinite Line {9}  = Ni Using Progression Ri;
Line(10) = {9, 7}; Transfinite Line {10} = Ni Using Progression Ri;
Line(11) = {8, 6}; Transfinite Line {11} = Ni Using Progression Ri;

Circle(12) = {4, 11, 5}; Transfinite Line {12} = Nc Using Progression Rc;
Circle(13) = {5, 11, 7}; Transfinite Line {13} = Nc Using Progression Rc;
Circle(14) = {7, 11, 6}; Transfinite Line {14} = Nc Using Progression Rc;
Circle(15) = {6, 11, 4}; Transfinite Line {15} = Nc Using Progression Rc;


Line Loop(16) = {1, 9, -12, -8};
Plane Surface(17) = {16};
Line Loop(18) = {9, 13, -10, -6};
Plane Surface(19) = {18};
Line Loop(20) = {10, 14, -11, 3};
Plane Surface(21) = {20};
Line Loop(22) = {11, 15, -8, 5};
Plane Surface(23) = {22};
Line Loop(24) = {2, 7, -4, -6};
Plane Surface(25) = {24};
Transfinite Surface {17};
Transfinite Surface {19};
Transfinite Surface {21};
Transfinite Surface {23};
Transfinite Surface {25};

Recombine Surface {17};
Recombine Surface {19};
Recombine Surface {21};
Recombine Surface {23};
Recombine Surface {25};

Extrude {0, 0, 1} {
  Surface{17, 19, 21, 23, 25};
  Layers{1};
  Recombine;
}

Physical Surface("inlet") = {112}; // inlet
Physical Surface("outlet") = {126}; //outlet
Physical Surface("top") = {90, 130}; // top
Physical Surface("bottom") = {34, 122}; // bottom
Physical Surface("frontAndBack") = {47, 69, 91, 113, 135, 17, 19, 21, 23, 25}; // frontAndBack
Physical Surface("cylinderWalls") = {104, 42, 60, 82}; //cylinderWalls
Physical Volume("internal") = {1, 2, 3, 4, 5}; // internal 

