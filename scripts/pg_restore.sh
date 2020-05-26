#!/bin/zsh

pg_restore -v \
    -h $REMOTE_HOST \
    -p $REMOTE_PORT \
    -U $REMOTE_USER \
    -d $REMOTE_DB \
    $1
