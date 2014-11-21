MATLAB="/usr/local/MATLAB/R2014a"
Arch=glnxa64
ENTRYPOINT=mexFunction
MAPFILE=$ENTRYPOINT'.map'
PREFDIR="/home/pitybea/.matlab/R2014a"
OPTSFILE_NAME="./mexopts.sh"
. $OPTSFILE_NAME
COMPILER=$CC
. $OPTSFILE_NAME
echo "# Make settings for aE" > aE_mex.mki
echo "CC=$CC" >> aE_mex.mki
echo "CFLAGS=$CFLAGS" >> aE_mex.mki
echo "CLIBS=$CLIBS" >> aE_mex.mki
echo "COPTIMFLAGS=$COPTIMFLAGS" >> aE_mex.mki
echo "CDEBUGFLAGS=$CDEBUGFLAGS" >> aE_mex.mki
echo "CXX=$CXX" >> aE_mex.mki
echo "CXXFLAGS=$CXXFLAGS" >> aE_mex.mki
echo "CXXLIBS=$CXXLIBS" >> aE_mex.mki
echo "CXXOPTIMFLAGS=$CXXOPTIMFLAGS" >> aE_mex.mki
echo "CXXDEBUGFLAGS=$CXXDEBUGFLAGS" >> aE_mex.mki
echo "LD=$LD" >> aE_mex.mki
echo "LDFLAGS=$LDFLAGS" >> aE_mex.mki
echo "LDOPTIMFLAGS=$LDOPTIMFLAGS" >> aE_mex.mki
echo "LDDEBUGFLAGS=$LDDEBUGFLAGS" >> aE_mex.mki
echo "Arch=$Arch" >> aE_mex.mki
echo OMPFLAGS= >> aE_mex.mki
echo OMPLINKFLAGS= >> aE_mex.mki
echo "EMC_COMPILER=gcc" >> aE_mex.mki
echo "EMC_CONFIG=optim" >> aE_mex.mki
"/usr/local/MATLAB/R2014a/bin/glnxa64/gmake" -B -f aE_mex.mk
