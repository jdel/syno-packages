#!/bin/sh

# Package
PACKAGE="sspks"
DNAME="Simple SPK Server"

# Others
INSTALL_DIR="/usr/local/${PACKAGE}"
TMP_DIR="${SYNOPKG_PKGDEST}/../../@tmp"
CFG_FILE="${SYNOPKG_PKGDEST}/app/config"

preinst ()
{
    exit 0
}

postinst ()
{
    # Link
    ln -s ${SYNOPKG_PKGDEST} ${INSTALL_DIR}

    # Copy files in install dir
    echo "${wizard_install_dir:=sspks}" > ${INSTALL_DIR}/etc/install_dir
    echo "${wizard_packages_dir:=/var/services/web/packages}" > ${INSTALL_DIR}/etc/packages_dir

    sspks_url=`cat ${INSTALL_DIR}/etc/install_dir`
    sspks_install_dir="/var/services/web/${sspks_url}"
    sspks_packages_dir=`cat ${INSTALL_DIR}/etc/packages_dir`

    if [ ! -d ${sspks_install_dir} ]; then
        mkdir -p ${sspks_install_dir}
    fi

    if [ ! -d ${sspks_packages_dir} ]; then
        mkdir -p ${sspks_packages_dir}
    fi

    if [ ! $(find ${sspks_install_dir} | wc -l) -eq 1 ]; then
        echo "${sspks_install_dir} is not empty !"
        exit 1
    fi

    sed -i -e "s|@sspks_url@|/${sspks_url}/|g" ${CFG_FILE}

    exit 0
}

preuninst ()
{
    # Clean uninstall

    sspks_url=`cat ${INSTALL_DIR}/etc/install_dir`
    sspks_install_dir="/var/services/web/${sspks_url}"
    rm ${sspks_install_dir}/index.php
    rm -rf ${sspks_install_dir}/data/
    rm -rf ${sspks_install_dir}/conf/
    rm -f ${sspks_install_dir}/packages

    exit 0
}

postuninst ()
{
    # Remove link
    rm -f ${INSTALL_DIR}

    exit 0
}

preupgrade ()
{
    exit 0
}

postupgrade ()
{
    exit 0
}
