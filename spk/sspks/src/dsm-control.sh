#!/bin/sh

# Package
PACKAGE="sspks"
DNAME="Simple SPK Server"

# Others
INSTALL_DIR="/usr/local/${PACKAGE}"
LOGFILE=""

start_daemon ()
{
    sspks_url=`cat ${INSTALL_DIR}/etc/install_dir`
    sspks_install_dir="/var/services/web/${sspks_url}"
    sspks_packages_dir=`cat ${INSTALL_DIR}/etc/packages_dir`
    if [ $(find ${sspks_install_dir} | wc -l) -gt 1 ]; then
        echo "${sspks_install_dir} is not empty !"
        return 1
    else
        if [ ! -f ${sspks_install_dir}/index.php ]; then
            cp ${INSTALL_DIR}/share/sspks/index.php ${sspks_install_dir}
        fi

        if [ ! -d ${sspks_install_dir}/data/ ]; then
            cp -r ${INSTALL_DIR}/share/sspks/data/ ${sspks_install_dir}
        fi

        if [ ! -d ${sspks_install_dir}/conf/ ]; then
            cp -r ${INSTALL_DIR}/share/sspks/conf/ ${sspks_install_dir}
        fi

        if [ ! -L ${sspks_install_dir}/packages ]; then
            ln -s ${sspks_packages_dir} ${sspks_install_dir}/packages
        fi
    fi
}

stop_daemon ()
{
    sspks_url=`cat ${INSTALL_DIR}/etc/install_dir`
    sspks_install_dir="/var/services/web/${sspks_url}"
    rm ${sspks_install_dir}/index.php
    rm -rf ${sspks_install_dir}/data/
    rm -rf ${sspks_install_dir}/conf/
    rm -f ${sspks_install_dir}/packages
}

daemon_status ()
{
    sspks_url=`cat ${INSTALL_DIR}/etc/install_dir`
    sspks_install_dir="/var/services/web/${sspks_url}"
    if [[ -f ${sspks_install_dir}/index.php && -d ${sspks_install_dir}/data/ && -d ${sspks_install_dir}/conf/ && -L ${sspks_install_dir}/packages ]]; then
        return 0
    else
        return 1
    fi
}


case $1 in
    start)
        if daemon_status; then
            echo ${DNAME} is already running
        else
            echo Starting ${DNAME} ...
            start_daemon
        fi
        ;;
    stop)
        if daemon_status; then
            echo Stopping ${DNAME} ...
            stop_daemon
        else
            echo ${DNAME} is not running
        fi
        ;;
    status)
        if daemon_status; then
            echo ${DNAME} is running
            exit 0
        else
            echo ${DNAME} is not running
            exit 1
        fi
        ;;
    log)
        echo ${LOG_FILE}
        ;;
    *)
        exit 1
        ;;
esac
