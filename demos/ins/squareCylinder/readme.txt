# to clone demoParanumal
git clone --recursive https://github.com/paranumal/demoparanumal.git

cd demoparanumal/libparanumal/ins
make -j `nproc`

# to run demoParanumal ins square cylinder example
cd ../../demos/ins/squareCylinder
../../../libparanumal/solvers/ins/insMain setupInsSquareCylinderTri2D.rc
