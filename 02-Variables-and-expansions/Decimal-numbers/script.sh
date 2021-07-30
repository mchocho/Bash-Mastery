#!/bin/bash

# bc stands for basic calculator (man bc)
# bc is a programming language which can work with
# numbers to any number of decimal places.

echo "scale=2; 5/2" | bc 
# scale is an internal variable of bc
