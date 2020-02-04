#!/bin/sh

function windChill(){
w=$(echo $1 $2 | awk '{print 35.75+0.6215*$1+(0.4275*$1-35.75)*sqrt($2**0.16)}')
echo $w
}
windChill 10 20
