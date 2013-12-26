(* ::Package:: *)

(* Short-term to long-term behavior of Langton's Ant. *)

moveAnt[gridLen_, maxIts_]:=Module[{grid, antX, antY, dir, dirlist, i},
    grid = ConstantArray[0, {gridLen, gridLen}];
    antX = Floor[gridLen/2];
    antY = Floor[gridLen/2];
    dir  = -Pi/2;
    i    = 0;

    Do[
        (* if on white, make black, turn 90 deg counterclockwise *)
        If[grid[[antX, antY]] == 0,
            grid[[antX, antY]] = 1;
            dir  = dir+Pi/2;
            antX = antX+Cos[dir];
            antY = antY+Sin[dir];
        ]

        (* if on black, make white, turn 90 deg clockwise *)
        If[grid[[antX, antY]] == 1,
            grid[[antX, antY]] = 0;
            dir  = dir-Pi/2;
            antX = antX+Cos[dir];
            antY = antY+Sin[dir];
        ]
    ,{i, maxIts}];

    MatrixPlot[grid, ColorFunction -> "Monochrome"]
];

(* allow scrubbing through number of iterations *)
Manipulate[moveAnt[100, its], {{its, 0, "Iterations"}, 0, 8500,1}]
