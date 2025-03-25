#!/bin/bash

set -e -x

CHOST=${macos_machine}

pushd "${PREFIX}"/bin
  ln -s clang ${CHOST}-clang
<<<<<<< HEAD
  if [[ "${CBUILD}" != ${CHOST} ]]; then
=======
  if [[ "${CBUILD}" != ${CHOST} ]] && [[ "${target_platform}" != linux-* || ${version} == "15.0.7" ]]; then
    # on linux, the `clang` package already has a $TRIPLE-clang, see
    # https://github.com/conda-forge/clangdev-feedstock/pull/251
>>>>>>> 3e3fd1a28877a845fe0fd6bb31f058da8bf7e3a4
    ln -s clang ${CBUILD}-clang
  fi
popd
