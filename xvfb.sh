#!/bin/bash

if [ -f /tmp/.X0-lock ]; then
  rm -f /tmp/.X0-lock
fi

exec Xvfb :$DISPLAY -ac -listen tcp -screen $SCREEN $DISPLAY_MODE
