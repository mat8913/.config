#!/usr/bin/python

from sys import argv,exit
from IPy import IP

def ip_in_range(ip, ip_range):
    return ip in IP(ip_range)


if __name__ == '__main__':
    if len(argv) < 3:
        print("Usage: " + argv[0] + " <ip address> <ip range(s)>")
        exit(10)
    for ip_range in argv[2:]:
        if ip_in_range(argv[1], ip_range):
            exit(0)
    exit(1)
