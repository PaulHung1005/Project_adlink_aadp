# Building Environment
2026-04-08
## Download source code and submodule
```bash
git clone --recursive git@github.com:PaulHung1005/Project_adlink_aadp.git
```
## Switch to v2.04.100-fix branch
```bash
git checkout v2.04.100-fix
```
## Run my setup env patch file
```bash
./SetupEnvsh
```
## Build BaseTools 
```bash
cd edk2
source edksetup.sh
make -C BaseTools
cd ..
```
## Build shell
```
./buildshell.sh
```
## Build ComHpcAlt code 
```bash
. make_ComHpcAlt.sh
```
---
# Building Environment 
