#clone and build libp
git clone --recursive --branch staging https://github.com/paranumal/libparanumal.git
cd libparanumal/solvers/ins
make -j `nproc`

#install gmsh
sudo apt install gmsh

#run gmsh
gmsh ../../meshes/insSquareCylinder2D.geo -2 -format msh22 -o insSquareCylinder2D.msh

#make a .rc, use this .msh, add [CFL NUMBER] 0.5
