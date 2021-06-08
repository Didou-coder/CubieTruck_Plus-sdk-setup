#!/bin/bash

# $1: name of the root fle system to be compiled

#Automated installation of required libraries for OS developement

setup='apt-get install -y'

for library in $(cat ct_plus_library.lst); do
  $setup $library
done

# install basic sdk root
mkdir /usr/local/ct-plus-linux-sdk
