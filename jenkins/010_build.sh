#!/bin/bash -eux
export ROOT=$(pwd)/../ROOT/
export PATH=${ROOT}/OCAML/bin:$PATH
export LD_LIBRARY_PATH=/usr/lib:/usr/local/lib:${ROOT}/OCAML/lib
ocaml -version
cd src && make
