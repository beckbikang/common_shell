#!/bin/sh

curl -w "%{time_namelookup}::%{time_connect}::%{time_starttransfer}::%{time_total}::%{speed_download}" "\n" xxxx
