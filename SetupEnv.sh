#!/bin/bash
# 
# detect install system
# 
echo "==========================================================================="
echo "set building environment"
echo "==========================================================================="
export WORKSPACE=$(pwd)
mkdir -p $WORKSPACE/edk2-ampere-tools/toolchain/ampere/bin
for f in /usr/bin/aarch64-linux-gnu-*; do
    tool=$(basename $f)
    newname=${tool/aarch64-linux-gnu/aarch64-ampere-linux-gnu}
    ln -sf $f $WORKSPACE/edk2-ampere-tools/toolchain/ampere/bin/$newname
done

ls $WORKSPACE/edk2-ampere-tools/toolchain/ampere/bin/
$WORKSPACE/edk2-ampere-tools/toolchain/ampere/bin/aarch64-ampere-linux-gnu-gcc --version

echo "==========================================================================="
echo "set building environment"
echo "==========================================================================="
export WORKSPACE=$(pwd)
source edk2/edksetup.sh --reconfig
source edk2_adlink-ampere-altra/tools/edk2.sh
echo "==========================================================================="
echo "Ready to build !!!"
echo "==========================================================================="
