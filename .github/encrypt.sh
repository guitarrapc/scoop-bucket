#!/bin/bash
openssl aes-256-cbc -pbkdf2 -e -in id_rsa -out ./id_rsa.cipher -k "${KEY}"
