#!/bin/bash

httpd-foreground &
PID=$!

trap "{ echo EXITING ${PID}; kill -s SIGWINCH ${PID}; exit 1; }" EXIT

wait ${PID}
