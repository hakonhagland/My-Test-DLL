#!/bin/bash

gcc -fPIC -c -o mylib.o mylib.c
ar rcs libmylib.a mylib.o