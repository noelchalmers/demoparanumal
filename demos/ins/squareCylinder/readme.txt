#clone and build libp
git clone --recursive --branch staging https://github.com/paranumal/libparanumal.git
cd libparanumal/solvers/ins
make -j `nproc`

#install gmsh
sudo apt install gmsh

#run gmsh
gmsh insSquareCylinder2D.geo -2 -o insSquareCylinder2D.msh

#make a .rc, use this .msh, add [CFL NUMBER] 0.5
