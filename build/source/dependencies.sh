#!/bin/bash

# This is a central location for a list of dependencies used in building the cross dependencies
export SHARED_DEPS=" \
    clang-$CLANG_VERSION \
    llvm-$CLANG_VERSION \
    llvm-$CLANG_VERSION-runtime \
    libclang-rt-$CLANG_VERSION-dev \
    libclang1-$CLANG_VERSION \
    lld-$CLANG_VERSION \
    libc++-$CLANG_VERSION-dev \
    libc++abi-$CLANG_VERSION-dev \
    libunwind-$CLANG_VERSION-dev \
    libclang-common-$CLANG_VERSION-dev \
    libclang-$CLANG_VERSION-dev \
    libclang1-$CLANG_VERSION \
    clang-format-$CLANG_VERSION \
    python3-clang-$CLANG_VERSION \
    clangd-$CLANG_VERSION \
    clang-tidy-$CLANG_VERSION \
    build-essential \
    ccache \
    cmake \
    ninja-build \
    git \
    python3 \
    perl \
    libedit-dev \
    g++-12 \
    libstdc++-12-dev \
    libstdc++-11-dev \
    gnulib \
    unzip \
    gfortran \
    gperf \
    pkg-config \
    gdb-multiarch \
    bison \
    gperf \
    flex \
    texinfo \
    gawk \
    bison \
    openssl \
    pigz \
    libncurses-dev \
    autoconf \
    automake \
    tar \
    figlet \
    curl \
    wget \
"

export LIB_DEPS=" \
    ffmpeg \
    firebird-dev \
    freetds-dev \
    gstreamer1.0-alsa \
    gstreamer1.0-libav \
    gstreamer1.0-qt5 \
    libasound2-dev \
    libassimp-dev \
    libavcodec-dev \
    libavformat-dev \
    libcups2-dev \
    libdbus-1-dev \
    libdrm-dev \
    libfontconfig1-dev \
    libfreetype6-dev \
    libgl1-mesa-dev \
    libgles2-mesa-dev \
    libglib2.0-dev \
    libglu1-mesa-dev \
    libgst-dev \
    libgstreamer-plugins-bad1.0-dev \
    libgstreamer-plugins-base1.0-dev \
    libgstreamer-plugins-good1.0-dev \
    libgstreamer1.0-dev \
    libgstreamermm-1.0-dev \
    libharfbuzz-dev \    
    libicu-dev \
    libinput-dev \
    libiodbc2-dev \
    libjpeg-dev \
    libjpeg9-dev \
    libmng-dev \
    libmysqlclient-dev \
    libopenal-dev \
    libopengl-dev \
    libpng-dev \
    libpq-dev \
    libpulse-dev \
    libsqlite0-dev \
    libsqlite3-dev \
    libssl-dev \
    libswscale-dev \
    libtiff-dev \
    libudev-dev \
    libvulkan-dev \
    libwebp-dev \
    libx11-dev \
    libx11-xcb-dev \
    libx11-xcb1 \
    libxcb-glx0-dev \
    libxcb-icccm4 \
    libxcb-icccm4-dev \
    libxcb-image0 \
    libxcb-image0-dev \
    libxcb-keysyms1 \
    libxcb-keysyms1-dev \
    libxcb-randr0-dev \
    libxcb-render-util0 \
    libxcb-render-util0-dev \
    libxcb-shape0-dev \
    libxcb-shm0 \
    libxcb-shm0-dev \
    libxcb-sync-dev \
    libxcb-xfixes0-dev \
    libxcb-xinerama0-dev \
    libxcb-xinput-dev \
    libxcb-xkb-dev \
    libxcb1 \
    libxcb1-dev \
    libxext-dev \
    libxfixes-dev \
    libxi-dev \
    libxkbcommon-dev \
    libxkbcommon-x11-dev \
    libxrender-dev \
    libxslt1-dev \
"

export QT5_DEPS=" \
    libkf5pulseaudioqt-dev \
    libqt5opengl5-dev \
    libqt5scxml5-dev \
    libqt5scxml5-private-dev \
    libqt5serialport5-dev \
    libqt5svg5-dev \
    qt3d5-dev \
    qt3d5-dev-tools \
    qtbase5-dev \
    qtbase5-private-dev \
    qtdeclarative5-dev \
    qtdeclarative5-private-dev \
    qttools5-dev \
    qttools5-dev-tools \
    qttools5-private-dev \
"

export QT5_BUILD_DEPS=" \
    libqt5opengl5-dev \
    libqt5scxml5-dev \
    libqt5scxml5-private-dev \
    libqt5serialport5-dev \
    libqt5svg5-dev \
    qml-module-qt3d \
    qt3d5-dev-tools \
    qtbase5-dev \
    qtbase5-private-dev \
    qtdeclarative5-dev \
    qtdeclarative5-private-dev \
    qttools5-dev \
    qttools5-dev-tools \
    qttools5-private-dev \
"

export QT6_DEPS=" \
    libqt6core5compat6-dev \
    libqt6opengl6-dev \
    libqt6quicktimeline6-dev \
    libqt6serialport6-dev \
    libqt6shadertools6-dev \
    libqt6svg6-dev \
    qt6-base-dev \
    qt6-base-private-dev \
    qt6-declarative-dev \
    qt6-declarative-private-dev \
    qt6-documentation-tools \
    qt6-l10n-tools \
    qt6-quick3d-dev \
    qt6-quick3d-dev-tools \
    qt6-scxml-dev \
    qt6-shader-baker \
    qt6-tools-dev \
    qt6-tools-dev-tools \
    qt6-tools-private-dev \
"

export QT6_BUILD_DEPS=" \
    libqt6core5compat6-dev \
    libqt6opengl6-dev \
    libqt6quicktimeline6-dev \
    libqt6serialport6-dev \
    libqt6shadertools6-dev \
    libqt6svg6-dev \
    qml6-module-qt3d-extras \
    qml6-module-qt5compat-graphicaleffects \
    qml6-module-qtcore \
    qml6-module-qtmultimedia \
    qml6-module-qtqml \
    qml6-module-qtquick \
    qml6-module-qtquick-controls \
    qml6-module-qtquick-timeline \
    qml6-module-quick3d \
    qt6-base-dev \
    qt6-base-private-dev \
    qt6-declarative-dev \
    qt6-declarative-private-dev \
    qt6-documentation-tools \
    qt6-l10n-tools \
    qt6-quick3d-dev \
    qt6-quick3d-dev-tools \
    qt6-scxml-dev \
    qt6-shader-baker \
    qt6-tools-dev \
    qt6-tools-dev-tools \
    qt6-tools-private-dev \
"

export QTCREATOR_DEPS=" \
"

export QTCREATOR_BUILD_DEPS=" \
    qbs \
    qtcreator \
"

export THIRDPARTY_DEPS=" \
    meson \
"

export THIRDPARTY_BUILD_DEPS=" \
    alsa-base, \
    gstreamer-1.0, \
    gstreamer-1.0-plugins-good, \
    gstreamer-1.0-plugins-bad, \
    gstreamer-1.0-plugins-ugly, \
    openal-soft, \
    pulseaudio, \
    libpng16-16, \
    libwebp \
"
