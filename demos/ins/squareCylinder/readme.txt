# to clone demoParanumal
git clone --recursive https://github.com/paranumal/demoparanumal.git

# to update libParanumal submodule
cd demoparanumal/libparanumal
git submodule update

# build occa and configure occa directory path
cd occa
git submodule update
export OCCA_DIR=`pwd`
export LD_LIBRARY_PATH=$OCCA_DIR/lib:$LD_LIBRARY_PATH:$OCCA_DIR/lib
make -j
cd ../

# to build ins example
cd solvers/ins
make -j `nproc`

# to run demoParanumal ins square cylinder example
cd ../../../demos/ins/squareCylinder
../../../libparanumal/solvers/ins/insMain setupInsSquareCylinderTri2D.rc
