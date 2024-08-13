#!/bin/bash

for i in $(seq 1 50); do
	{ time  $1 -c 'for i in $(seq 1 1000000); do [ 1 = 1 ]; done'; } 2>> $1.log
done
