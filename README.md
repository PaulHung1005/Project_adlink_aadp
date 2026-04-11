# Building Environment
## Change Histroy
3. 2026-04-10 : Fix build error after running make_jade.sh
2. 2026-04-09 : make_ComHpcAlt.sh -> Build ok.\
                make_jade.sh -> Can not build.\
1. 2026-04-08 : Debug make_ComHpcAlt.sh build error and iasl tool is incorrect version.
## Build process --
### 1. Download source code and submodule
```bash
git clone --recursive git@github.com:PaulHung1005/Project_adlink_aadp.git
```
### 2. Switch to v2.04.100-fix branch
```bash
git checkout v2.04.100-fix
```
### 3. Run my setup env patch file
```bash
./SetupEnv.sh
./CopyOverrideBeforeBuild.sh
```
### 4. Build BaseTools 
```bash
cd edk2
source edksetup.sh
make -C BaseTools
cd ..
```
### 5. Build UEFI shell for Arm system
```
./buildshell.sh
```
### 6. Build ComHpcAlt code 
```bash
. make_ComHpcAlt.sh
```
---
# Building Environment 
