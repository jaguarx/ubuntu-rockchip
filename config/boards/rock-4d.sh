# shellcheck shell=bash

export BOARD_NAME="Radxa ROCK 5D"
export BOARD_MAKER="Radxa"
export BOARD_SOC="Rockchip RK3576"
export BOARD_CPU="ARM Cortex A72 / A53"
export UBOOT_PACKAGE="u-boot-rk3576"
export UBOOT_RULES_TARGET="rock-4d-rk3576"
export COMPATIBLE_SUITES=("jammy" "noble")
export COMPATIBLE_FLAVORS=("server" "desktop")

function config_image_hook__rock-4d() {
    local rootfs="$1"
    local overlay="$2"
    local suite="$3"

    # Kernel modules to blacklist
    echo "blacklist panfrost" > "${rootfs}/etc/modprobe.d/panfrost.conf"

    return 0
}
