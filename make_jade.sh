#!/bin/bash
export WORKSPACE=$PWD
OPATH=$PATH
## copy from edk2_adlink-ampere-altra/tools/edk2.sh
export PACKAGES_PATH=$WORKSPACE/edk2-platforms:$WORKSPACE/edk2-platforms/Features/Intel:$WORKSPACE/edk2
OEM_COMMON_DIR=$WORKSPACE/edk2_adlink-ampere-altra
# export CROSS_COMPILE=aarch64-ampere-linux-gnu-
. $WORKSPACE/edk2/edksetup.sh

make -f $WORKSPACE/edk2-ampere-tools/Makefile \
    BOARD_SETTING=$WORKSPACE/AmpereAltra-ATF-SCP/board_settings/jade_board_setting_2.06.20220308.bin \
    VM_SHARED_DIR=$HOME/AmpereR \
    PACKAGES_PATH=$WORKSPACE/adlink-platforms:$OEM_COMMON_DIR:$WORKSPACE/edk2-platforms/Features/Intel/Debugging:$WORKSPACE/OpenPlatformPkg:"${PACKAGES_PATH}" \
    ATF_SLIM=$WORKSPACE/AmpereAltra-ATF-SCP/atf/altra_atf_signed_2.06.20220308.slim \
    SCP_SLIM=$WORKSPACE/AmpereAltra-ATF-SCP/scp/altra_scp_signed_2.06.20220308.slim \
    LINUXBOOT_BIN=$WORKSPACE/flashkernel \
    VER=2.04 BUILD=100 \
    tianocore_capsule # tianocore_img # linuxboot_img # all # 
export PATH=$OPATH
