#!/usr/bin/env bash

#     --slave /usr/bin/$1 $1 /usr/bin/$1-\${version} \\

function register_clang_version {
    local version="$1"
    local priority="$2"

    update-alternatives \
        --install /usr/bin/llvm-config       llvm-config      /usr/bin/llvm-config-${version} ${priority} \
        --slave   /usr/bin/llvm-ar           llvm-ar          /usr/bin/llvm-ar-${version} \
        --slave   /usr/bin/llvm-as           llvm-as          /usr/bin/llvm-as-${version} \
        --slave   /usr/bin/llvm-bcanalyzer   llvm-bcanalyzer  /usr/bin/llvm-bcanalyzer-${version} \
        --slave   /usr/bin/llvm-cov          llvm-cov         /usr/bin/llvm-cov-${version} \
        --slave   /usr/bin/llvm-diff         llvm-diff        /usr/bin/llvm-diff-${version} \
        --slave   /usr/bin/llvm-dis          llvm-dis         /usr/bin/llvm-dis-${version} \
        --slave   /usr/bin/llvm-dwarfdump    llvm-dwarfdump   /usr/bin/llvm-dwarfdump-${version} \
        --slave   /usr/bin/llvm-extract      llvm-extract     /usr/bin/llvm-extract-${version} \
        --slave   /usr/bin/llvm-link         llvm-link        /usr/bin/llvm-link-${version} \
        --slave   /usr/bin/llvm-mc           llvm-mc          /usr/bin/llvm-mc-${version} \
        --slave   /usr/bin/llvm-nm           llvm-nm          /usr/bin/llvm-nm-${version} \
        --slave   /usr/bin/llvm-objdump      llvm-objdump     /usr/bin/llvm-objdump-${version} \
        --slave   /usr/bin/llvm-ranlib       llvm-ranlib      /usr/bin/llvm-ranlib-${version} \
        --slave   /usr/bin/llvm-readobj      llvm-readobj     /usr/bin/llvm-readobj-${version} \
        --slave   /usr/bin/llvm-rtdyld       llvm-rtdyld      /usr/bin/llvm-rtdyld-${version} \
        --slave   /usr/bin/llvm-size         llvm-size        /usr/bin/llvm-size-${version} \
        --slave   /usr/bin/llvm-stress       llvm-stress      /usr/bin/llvm-stress-${version} \
        --slave   /usr/bin/llvm-symbolizer   llvm-symbolizer  /usr/bin/llvm-symbolizer-${version} \
        --slave   /usr/bin/llvm-tblgen       llvm-tblgen      /usr/bin/llvm-tblgen-${version}

    update-alternatives \
        --install /usr/bin/clang                 clang                 /usr/bin/clang-${version} ${priority}

    update-alternatives \
        --install   /usr/bin/clang++               clang++               /usr/bin/clang++-${version} ${priority}

    update-alternatives \
        --install   /usr/bin/c-index-test          c-index-test          /usr/bin/c-index-test-${version} ${priority}

    update-alternatives \
        --install   /usr/bin/clang-check           clang-check           /usr/bin/clang-check-${version} ${priority}

    update-alternatives \
        --install   /usr/bin/clang-cl              clang-cl              /usr/bin/clang-cl-${version} ${priority}

    update-alternatives \
        --install   /usr/bin/clang-cpp             clang-cpp             /usr/bin/clang-cpp-${version} ${priority}

    update-alternatives \
        --install   /usr/bin/clang-format          clang-format          /usr/bin/clang-format-${version} ${priority}

    update-alternatives \
        --install   /usr/bin/clang-format-diff     clang-format-diff     /usr/bin/clang-format-diff-${version} ${priority}

    update-alternatives \
        --install   /usr/bin/clang-include-fixer   clang-include-fixer   /usr/bin/clang-include-fixer-${version} ${priority}

    update-alternatives \
        --install   /usr/bin/clang-offload-bundler clang-offload-bundler /usr/bin/clang-offload-bundler-${version} ${priority}

    update-alternatives \
        --install   /usr/bin/clang-query           clang-query           /usr/bin/clang-query-${version} ${priority}

    update-alternatives \
        --install   /usr/bin/clang-rename          clang-rename          /usr/bin/clang-rename-${version} ${priority}

    update-alternatives \
        --install   /usr/bin/clang-reorder-fields  clang-reorder-fields  /usr/bin/clang-reorder-fields-${version} ${priority}

    update-alternatives \
        --install   /usr/bin/clang-tidy            clang-tidy            /usr/bin/clang-tidy-${version} ${priority}

    update-alternatives \
        --install   /usr/bin/c-index-test          c-index-test          /usr/bin/c-index-test-${version} ${priority}

    update-alternatives \
        --install   /usr/bin/clang-check           clang-check           /usr/bin/clang-check-${version} ${priority}

    update-alternatives \
        --install   /usr/bin/clang-cl              clang-cl              /usr/bin/clang-cl-${version} ${priority}

    update-alternatives \
        --install   /usr/bin/clang-cpp             clang-cpp             /usr/bin/clang-cpp-${version} ${priority}

    update-alternatives \
        --install   /usr/bin/clang-format          clang-format          /usr/bin/clang-format-${version} ${priority}

    update-alternatives \
        --install   /usr/bin/clang-format-diff     clang-format-diff     /usr/bin/clang-format-diff-${version} ${priority}

    update-alternatives \
        --install   /usr/bin/clang-import-test     clang-import-test     /usr/bin/clang-import-test-${version} ${priority}

    update-alternatives \
        --install   /usr/bin/clang-include-fixer   clang-include-fixer   /usr/bin/clang-include-fixer-${version} ${priority}

    update-alternatives \
        --install   /usr/bin/clang-offload-bundler clang-offload-bundler /usr/bin/clang-offload-bundler-${version} ${priority}

    update-alternatives \
        --install   /usr/bin/clang-query           clang-query           /usr/bin/clang-query-${version} ${priority}

    update-alternatives \
        --install   /usr/bin/clang-rename          clang-rename          /usr/bin/clang-rename-${version} ${priority}

    update-alternatives \
        --install   /usr/bin/clang-reorder-fields  clang-reorder-fields  /usr/bin/clang-reorder-fields-${version} ${priority}

    update-alternatives \
        --install   /usr/bin/clang-tidy            clang-tidy            /usr/bin/clang-tidy-${version} ${priority}
}

register_clang_version $1 $2
