#!/bin/bash

host=$1
port=$2
timeout=$3

nc -v -z -w $timeout $host $port