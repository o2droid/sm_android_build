# Configuration for Linux on ARM.
# Generating binaries for the ARMv5TE architecture and higher
#
ARCH_ARM_HAVE_THUMB_SUPPORT     := true
ARCH_ARM_HAVE_FAST_INTERWORKING := true
ARCH_ARM_HAVE_64BIT_DATA        := true
ARCH_ARM_HAVE_HALFWORD_MULTIPLY := true
ARCH_ARM_HAVE_CLZ               := true
ARCH_ARM_HAVE_FFS               := true

# Note: Hard coding the 'tune' value here is probably not ideal,
# and a better solution should be found in the future.
#
arch_variant_cflags := \
    -march=armv6j \
    -mtune=arm1176jzf-s \
    -O3 \
    -pipe \
    -floop-interchange \
    -floop-strip-mine \
    -floop-block \
    -ffast-math \
    -funsafe-loop-optimizations \
    -mfloat-abi=softfp \
    -funroll-loops \
    -fomit-frame-pointer \
    -D__ARM_ARCH_5__ \
    -D__ARM_ARCH_5T__ \
    -D__ARM_ARCH_5E__ \
    -D__ARM_ARCH_5TE__
