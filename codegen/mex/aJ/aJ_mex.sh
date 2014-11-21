MATLAB="/usr/local/MATLAB/R2014a"
Arch=glnxa64
ENTRYPOINT=mexFunction
MAPFILE=$ENTRYPOINT'.map'
PREFDIR="/home/pitybea/.matlab/R2014a"
OPTSFILE_NAME="./mexopts.sh"
. $OPTSFILE_NAME
COMPILER=$CC
. $OPTSFILE_NAME
echo "# Make settings for aJ" > aJ_mex.mki
echo "CC=$CC" >> aJ_mex.mki
echo "CFLAGS=$CFLAGS" >> aJ_mex.mki
echo "CLIBS=$CLIBS" >> aJ_mex.mki
echo "COPTIMFLAGS=$COPTIMFLAGS" >> aJ_mex.mki
echo "CDEBUGFLAGS=$CDEBUGFLAGS" >> aJ_mex.mki
echo "CXX=$CXX" >> aJ_mex.mki
echo "CXXFLAGS=$CXXFLAGS" >> aJ_mex.mki
echo "CXXLIBS=$CXXLIBS" >> aJ_mex.mki
echo "CXXOPTIMFLAGS=$CXXOPTIMFLAGS" >> aJ_mex.mki
echo "CXXDEBUGFLAGS=$CXXDEBUGFLAGS" >> aJ_mex.mki
echo "LD=$LD" >> aJ_mex.mki
echo "LDFLAGS=$LDFLAGS" >> aJ_mex.mki
echo "LDOPTIMFLAGS=$LDOPTIMFLAGS" >> aJ_mex.mki
echo "LDDEBUGFLAGS=$LDDEBUGFLAGS" >> aJ_mex.mki
echo "Arch=$Arch" >> aJ_mex.mki
echo OMPFLAGS= >> aJ_mex.mki
echo OMPLINKFLAGS= >> aJ_mex.mki
echo "EMC_COMPILER=gcc" >> aJ_mex.mki
echo "EMC_CONFIG=optim" >> aJ_mex.mki
"/usr/local/MATLAB/R2014a/bin/glnxa64/gmake" -B -f aJ_mex.mk
