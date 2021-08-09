#!/bin/bash
file=$1
openssl enc -in $1 -d -aes-256-cbc  -pass stdin > "${file/\.enc/}"
