# CFDwOpenFoam

OpenFoam tutorial case folders.


Contents:
*   LaminarVortexSheddingInOpenFoam :
	Case folder for simulation of Laminar Vortex Shedding over a 2D cylinder.
        See the readme file on basic case setup or just dive driectly into the case files youself.	
	See LaminarVortexShedding.pdf for a full report including pre/post processing
   	Mesh is created in gmsh


*   LaminarPipeFlow
	Case folder for simulation of Laminar Poiseuille flow through a pipe
	Mesh is created in gmsh

*   TurbulentPipeFlow_kEpsilon
	Case folder for simulation of turbulent pipe flow with the k-epsilon 
	turbulence model. Mesh is created with gmsh. 
	The solver used is the steady state solver simpleFoam
	To conntrol and plot residuals in gnuplot from simpleFoam see the resPlot
	with commands: gnuplot; load "reslot"
