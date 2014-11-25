MATLAB="/usr/local/MATLAB/R2014a"
Arch=glnxa64
ENTRYPOINT=mexFunction
MAPFILE=$ENTRYPOINT'.map'
PREFDIR="/home/pitybea/.matlab/R2014a"
OPTSFILE_NAME="./mexopts.sh"
. $OPTSFILE_NAME
COMPILER=$CC
. $OPTSFILE_NAME
echo "# Make settings for goodJsym" > goodJsym_mex.mki
echo "CC=$CC" >> goodJsym_mex.mki
echo "CFLAGS=$CFLAGS" >> goodJsym_mex.mki
echo "CLIBS=$CLIBS" >> goodJsym_mex.mki
echo "COPTIMFLAGS=$COPTIMFLAGS" >> goodJsym_mex.mki
echo "CDEBUGFLAGS=$CDEBUGFLAGS" >> goodJsym_mex.mki
echo "CXX=$CXX" >> goodJsym_mex.mki
echo "CXXFLAGS=$CXXFLAGS" >> goodJsym_mex.mki
echo "CXXLIBS=$CXXLIBS" >> goodJsym_mex.mki
echo "CXXOPTIMFLAGS=$CXXOPTIMFLAGS" >> goodJsym_mex.mki
echo "CXXDEBUGFLAGS=$CXXDEBUGFLAGS" >> goodJsym_mex.mki
echo "LD=$LD" >> goodJsym_mex.mki
echo "LDFLAGS=$LDFLAGS" >> goodJsym_mex.mki
echo "LDOPTIMFLAGS=$LDOPTIMFLAGS" >> goodJsym_mex.mki
echo "LDDEBUGFLAGS=$LDDEBUGFLAGS" >> goodJsym_mex.mki
echo "Arch=$Arch" >> goodJsym_mex.mki
echo OMPFLAGS= >> goodJsym_mex.mki
echo OMPLINKFLAGS= >> goodJsym_mex.mki
echo "EMC_COMPILER=gcc" >> goodJsym_mex.mki
echo "EMC_CONFIG=optim" >> goodJsym_mex.mki
"/usr/local/MATLAB/R2014a/bin/glnxa64/gmake" -B -f goodJsym_mex.mk
