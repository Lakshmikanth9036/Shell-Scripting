#!/bin/sh

function quadratic(){
delta=$(( ($2*$2)-(4*$1*$3) ))
r1=$(echo $2 $delta $1 | awk '{print -$1+sqrt($2)/(2*$3)}')
r2=$(echo $2 $delta $1 | awk '{print -$1-sqrt($2)/(2*$3)}')
echo $r1 $r2
}
quadratic 2 4 1
