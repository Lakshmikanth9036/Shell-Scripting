#!/bin/sh

function distance(){
x=$1
y=$2
z=$(echo $x $y | awk '{print sqrt(($1*$1)+($2*$2))}')
echo $z
}

distance $1 $2


