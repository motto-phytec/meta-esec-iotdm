FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"

SRC_URI += " \
    file://0001-include-configs-Change-A-B-system-partitions.patch \
    ${@bb.utils.contains("DISTRO_FEATURES", "connagtive-provisioning", "", "file://0002-include-configs-Enable-booting-A-B-system-by-default.patch", d)} \
"
