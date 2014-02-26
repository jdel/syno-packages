#!/bin/sh

# Package
PACKAGE="youtube-upload"
DNAME="Youtube Upload"

# Others
INSTALL_DIR="/usr/local/${PACKAGE}"

case $1 in
    start)
        exit 0
        ;;
    stop)
        exit 0
        ;;
    status)
        exit 0
        ;;
    log)
        exit 1
        ;;
    *)
        exit 1
        ;;
esac
