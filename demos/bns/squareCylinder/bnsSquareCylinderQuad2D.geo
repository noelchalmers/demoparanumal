Mesh.MshFileVersion = 2.2;
 
coarse = DefineNumber[1.75];
fine   = DefineNumber[0.61];
fineC  = DefineNumber[0.61];
pmlWidth = DefineNumber[4.0];

xmax  = DefineNumber[50];
xmin  = DefineNumber[-16];
ymax  = DefineNumber[22];
ymin  = DefineNumber[-22];

xcmax  = DefineNumber[0.5];
xcmin  = DefineNumber[-0.5];
ycmax  = DefineNumber[0.5];
ycmin  = DefineNumber[-0.5];

xbmax  = xmax;
xbmin  = DefineNumber[-4];
ybmax  = DefineNumber[4];
ybmin  = DefineNumber[-4];

xpmlmin = DefineNumber[xmin - pmlWidth];
xpmlmax = DefineNumber[xmax + pmlWidth];
ypmlmin = DefineNumber[ymin - pmlWidth];
ypmlmax = DefineNumber[ymax + pmlWidth];

Point(1) = {xmin, ymin, 0, coarse};
Point(2) = {xmin, ymax, 0, coarse};
Point(3) = {xmax, ymax, 0, coarse};
Point(4) = {xmax, ymin, 0, coarse};

Point(6) = {xcmin, ycmax, 0, fineC};
Point(7) = {xcmax, ycmax, 0, fineC};
Point(8) = {xcmin, ycmin, 0, fineC};
Point(9) = {xcmax, ycmin, 0, fineC};

Point(10) = {xbmin,ybmin, 0, fine};
Point(11) = {xbmin, ybmax, 0, fine};
Point(12) = {xbmax, ybmax, 0, fine};
Point(13) = {xbmax,ybmin, 0, fine};

Point(14) = {xpmlmin, ypmlmin, 0, coarse};
Point(15) = {xpmlmax, ypmlmin, 0, coarse};
Point(16) = {xpmlmax, ypmlmax, 0, coarse};
Point(17) = {xpmlmin, ypmlmax, 0, coarse};

Point(18) = {xmin, ypmlmin, 0, coarse};
Point(19) = {xpmlmin, ymin, 0, coarse};

Point(20) = {xmax, ypmlmin, 0, coarse};
Point(21) = {xpmlmax, ymin, 0, coarse};

Point(22) = {xmax, ypmlmax, 0, coarse};
Point(23) = {xpmlmax, ymax, 0, coarse};

Point(24) = {xmin, ypmlmax, 0, coarse};
Point(25) = {xpmlmin, ymax, 0, coarse};

Point(26) = {xpmlmax, ybmin, 0, coarse};
Point(27) = {xpmlmax, ybmax, 0, coarse};

Line(1) = {2, 3};
Line(2) = {12, 3};
Line(3) = {11, 12};
Line(4) = {2, 1};
Line(5) = {4, 1};
Line(6) = {13, 4};
Line(7) = {13, 10};
Line(8) = {11, 10};
Line(9) = {12, 13};
Line(10) = {6, 7};
Line(11) = {7, 9};
Line(12) = {9, 8};
Line(13) = {8, 6};

Line(14) = {14, 18};
Line(15) = {18, 1};
Line(16) = {1,  19};
Line(17) = {19, 14};

Line(18) = {20, 15};
Line(19) = {15, 21};
Line(20) = {21, 4};
Line(21) = {4,  20};

Line(22) = {3,  23};
Line(23) = {23, 16};
Line(24) = {16, 22};
Line(25) = {22, 3};

Line(26) = {25, 2};
Line(27) = {2,  24};
Line(28) = {24, 17};
Line(29) = {17, 25};

Line(30) = {18, 20};
Line(31) = {22, 24};
Line(32) = {25, 19};

Line(33) = {21, 26};
Line(34) = {27, 26};
Line(35) = {27, 23};
Line(36) = {13, 26};
Line(37) = {27, 12};

Line Loop(14) = {1, -2, -3, 8, -7, 6, 5, -4};
Plane Surface(15) = {14};
Line Loop(16) = {3, 9, 7, -8};
Line Loop(17) = {10, 11, 12, 13};
Plane Surface(18) = {16, 17};

Line Loop(18) = {-14, -17, -16, -15};
Plane Surface(19) = {18};
Line Loop(20) = {-18, -21, -20, -19};
Plane Surface(21) = {20};
Line Loop(22) = {-22, -25, -24, -23};
Plane Surface(23) = {22};
Line Loop(24) = {-26, -29, -28, -27};
Plane Surface(25) = {24};

Line Loop(26) = {-30, 15, -5, 21};
Plane Surface(27) = {26};
Line Loop(28) = {-1, 27, -31, 25};
Plane Surface(29) = {28};
Line Loop(30) = {16, -32, 26, 4};
Plane Surface(31) = {30};
Line Loop(32) = {20, -6, 36, -33};
Plane Surface(33) = {32};
Line Loop(34) = {-36, -9, -37, 34};
Plane Surface(35) = {34};
Line Loop(36) = {37, 2, 22, -35};
Plane Surface(37) = {36};

Transfinite Surface {19, 21, 23, 25, 27, 29, 31};

Physical Line("Wall",1) = {12, 11, 13, 10};
Physical Line("Inflow",2) = {14, 30, 18, 19, 33, 34, 35, 23, 24, 31, 28, 29, 32, 17};
Physical Surface("Domain",9) = {15, 18};
Physical Surface("XYPML",300) = {19, 21, 23, 25};
Physical Surface("XPML",100) = {31,33,35,37};
Physical Surface("YPML",200) = {27,29};

Recombine Surface {15, 18, 19, 21, 23, 25, 31,33,35,37, 27,29};
