#!/usr/bin/perl
# 
# Script to convert Unix time to Human format:

print scalar localtime(shift||time), "\n";
