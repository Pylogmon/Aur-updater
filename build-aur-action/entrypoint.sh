#!/bin/bash

#pkgname=$1
echo ${PKGNAME}

useradd builder -m
echo "builder ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers
chmod -R a+rw .

pacman-key --init
pacman -Sy --noconfirm &&

bash scripts/${PKGNAME}.sh

#echo OK
