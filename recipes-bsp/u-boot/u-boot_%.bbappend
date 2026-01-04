# Disable U-Boot interrupt timeout to avoid
# boot issues without a connected debug UART
# This is a known U-Boot issue discussed in:
# https://bugzilla.opensuse.org/show_bug.cgi?id=1251192
# https://lists.denx.de/pipermail/u-boot/2025-January/576305.html
UBOOT_DELAY_TIMEOUT ?= "-2"

# Copy form "meta-raspberrypi/recipes-bsp/u-boot/u-boot_%.bbappend"
do_configure:append:raspberrypi5() {
    sed -i '/^CONFIG_BOOTDELAY=/d' "${B}/.config"
    echo "CONFIG_BOOTDELAY=${UBOOT_DELAY_TIMEOUT}" >> ${B}/.config
}