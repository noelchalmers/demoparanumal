# to clone demoParanumal
git clone --recursive https://github.com/paranumal/demoparanumal.git

cd demoparanumal/libparanumal/cns
make -j `nproc`

# to run demoParanumal cns square cylinder example
cd ../../demos/cns/squareCylinder
../../../libparanumal/solvers/cns/cnsMain setupCnsSquareCylinderTri2D.rc
