#!/bin/bash

# Fix libunwind pkg-config
sudo cp -rfv $TLD/thunder/build/linux/pkgconfig/*.pc /usr/lib/pkgconfig

# Force LLVM to link to proper version
sudo mv -v /usr/lib/llvm-14 /usr/lib/llvm-bck
sudo ln -sv $LLVM_INSTALL_DIR /usr/lib/llvm-14

# Set Proper llvm versions of tools
sudo update-alternatives --install /usr/bin/clang clang $LLVM_INSTALL_DIR/bin/clang 10000
sudo update-alternatives --install /usr/bin/clang++ clang++ $LLVM_INSTALL_DIR/bin/clang++ 10000
sudo update-alternatives --install /usr/bin/llvm-config llvm-config $LLVM_INSTALL_DIR/bin/llvm-config 10000
sudo update-alternatives --install /usr/bin/ld.lld ld.lld $LLVM_INSTALL_DIR/bin/ld.lld 10000

# Set this in qmake.conf to disable certain false linker warnings
if [[ "$SOURCE" != "qtcreator" ]]; then
    cd $SOURCE_DIR/qtbase
    sed -i.orig -e '14s@$@, -Wl,--undefined-version@' mkspecs/freebsd-clang/qmake.conf

    # Apply qmake fixes for various different packages that don't get detected properly
    if [[ "$SOURCE" == "qt5" ]]; then
        patch -p1 -i $TLD/thunder/patches/linux/pkg-config-qmake-fixes.patch
    fi
fi

cd $TLD
