#!/bin/sh
eval "`gcc-config -E`"
exec distccd --no-detach --log-level notice --log-stderr --user distcc --listen "$LISTEN_ADDRESS" --port $PORT --jobs $JOBS --allow "$ALLOWED_CLIENTS"
