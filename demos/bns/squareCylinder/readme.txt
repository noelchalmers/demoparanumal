# to clone demoParanumal
git clone --recursive https://github.com/paranumal/demoparanumal.git

cd demoparanumal/libparanumal/bns
make -j `nproc`

# to run demoParanumal bns square cylinder example
cd ../../demos/bns/squareCylinder
../../../libparanumal/solvers/bns/bnsMain setupBnsSquareCylinderTri2D.rc
