MATLAB="/usr/local/MATLAB/R2014a"
Arch=glnxa64
ENTRYPOINT=mexFunction
MAPFILE=$ENTRYPOINT'.map'
PREFDIR="/home/pitybea/.matlab/R2014a"
OPTSFILE_NAME="./mexopts.sh"
. $OPTSFILE_NAME
COMPILER=$CC
. $OPTSFILE_NAME
echo "# Make settings for goodError" > goodError_mex.mki
echo "CC=$CC" >> goodError_mex.mki
echo "CFLAGS=$CFLAGS" >> goodError_mex.mki
echo "CLIBS=$CLIBS" >> goodError_mex.mki
echo "COPTIMFLAGS=$COPTIMFLAGS" >> goodError_mex.mki
echo "CDEBUGFLAGS=$CDEBUGFLAGS" >> goodError_mex.mki
echo "CXX=$CXX" >> goodError_mex.mki
echo "CXXFLAGS=$CXXFLAGS" >> goodError_mex.mki
echo "CXXLIBS=$CXXLIBS" >> goodError_mex.mki
echo "CXXOPTIMFLAGS=$CXXOPTIMFLAGS" >> goodError_mex.mki
echo "CXXDEBUGFLAGS=$CXXDEBUGFLAGS" >> goodError_mex.mki
echo "LD=$LD" >> goodError_mex.mki
echo "LDFLAGS=$LDFLAGS" >> goodError_mex.mki
echo "LDOPTIMFLAGS=$LDOPTIMFLAGS" >> goodError_mex.mki
echo "LDDEBUGFLAGS=$LDDEBUGFLAGS" >> goodError_mex.mki
echo "Arch=$Arch" >> goodError_mex.mki
echo OMPFLAGS= >> goodError_mex.mki
echo OMPLINKFLAGS= >> goodError_mex.mki
echo "EMC_COMPILER=gcc" >> goodError_mex.mki
echo "EMC_CONFIG=optim" >> goodError_mex.mki
"/usr/local/MATLAB/R2014a/bin/glnxa64/gmake" -B -f goodError_mex.mk
