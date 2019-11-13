#!/bin/bash


echo "Starting fancy programming thing"
cd /usr

if [ ! -d "pack" ]; then
  mkdir "pack"
  echo "Created folder 'pack'"
else
  echo "Folder 'pack' is existing"
fi

cd pack

echo "Getting the files from github repo"
 
git clone https://github.com/aaxs/mips-toolchain

echo "Moving files around"

mv /usr/pack/mips-toolchain/mips_elf_toolchain-2.0-sd /usr/pack
rm -rf /usr/pack/mips-toolchain

echo "Adding mips-toolchain to path"
ln -s /usr/pack/mips_elf_toolchain-2.0-sd/amd64-debian-linux8/bin/* /usr/local/bin

echo "Some fixing magic"
ln -s /usr/lib/x86_64-linux-gnu/libmpfr.so.6 /usr/lib/x86_64-linux-gnu/libmpfr.so.4

echo "Installing some packages for Insight"
apt-get install itcl3 itk3 iwidgets4 libtk8.6

