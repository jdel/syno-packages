#!/bin/sh

# Package
PACKAGE="bitcoin"
DNAME="Bitcoin"

# Others
INSTALL_DIR="/usr/local/${PACKAGE}"
LIB_DIR="${INSTALL_DIR}/lib/"
DATA_DIR="${INSTALL_DIR}/var/"
CONFIG_FILE="${INSTALL_DIR}/etc/bitcoin.conf"
PID_FILE="${INSTALL_DIR}/var/bitcoin.pid"
LOG_FILE="${INSTALL_DIR}/var/debug.log"
PATH="${INSTALL_DIR}/bin:${PATH}"
USER="bitcoin"

start_daemon ()
{
    su - ${USER} -c "LD_LIBRARY_PATH=${LIB_DIR} ${INSTALL_DIR}/bin/bitcoind -datadir=${DATA_DIR} -conf=${CONFIG_FILE} -pid=${PID_FILE} -daemon"
}

stop_daemon ()
{
    su - ${USER} -c "LD_LIBRARY_PATH=${LIB_DIR} ${INSTALL_DIR}/bin/bitcoin-cli -datadir=${DATA_DIR} -conf=${CONFIG_FILE} stop"
    wait_for_status 1 20 || kill -9 `cat ${PID_FILE}`
    rm -f ${PID_FILE}
}

daemon_status ()
{
    if [ -f ${PID_FILE} ] && kill -0 `cat ${PID_FILE}` > /dev/null 2>&1; then
        return
    fi
    rm -f ${PID_FILE}
    return 1
}

wait_for_status ()
{
    counter=$2
    while [ ${counter} -gt 0 ]; do
        daemon_status
        [ $? -eq $1 ] && return
        let counter=counter-1
        sleep 1
    done
    return 1
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
        tail -3000 ${LOG_FILE} > ${LOG_FILE}.short
        echo ${LOG_FILE}.short
        ;;
    *)
        exit 1
        ;;
esac
