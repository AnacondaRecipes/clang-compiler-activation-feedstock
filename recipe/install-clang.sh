#!/bin/bash

set -e -x
mkdir -p "${PREFIX}"/etc/conda/{de,}activate.d/
cp "${SRC_DIR}"/activate-clang.sh "${PREFIX}"/etc/conda/activate.d/activate_"${PKG_NAME}".sh
cp "${SRC_DIR}"/deactivate-clang.sh "${PREFIX}"/etc/conda/deactivate.d/deactivate_"${PKG_NAME}".sh

# #!/bin/bash

# set -e -x

# CHOST=${macos_machine}

# pushd "${PREFIX}"/bin
#   ln -s clang ${CHOST}-clang
#   if [[ "${CBUILD}" != ${CHOST} ]] && [[ "${target_platform}" != linux-* || ${version} == "15.0.7" ]]; then
#     # on linux, the `clang` package already has a $TRIPLE-clang, see
#     # https://github.com/conda-forge/clangdev-feedstock/pull/251
#     ln -s clang ${CBUILD}-clang
#   fi
# popd
