#!/bin/sh

# Build using clang-r596125. Just add the clang-r596125/bin to your PATH environment variable before running this.

./scripts/kconfig/merge_config.sh -O out/ -m arch/arm64/configs/exynos850-a04sxx_defconfig arch/arm64/configs/resukisu.config
make ARCH=arm64 O=out LLVM=1 olddefconfig
make ARCH=arm64 O=out LLVM=1 -j$(nproc)
