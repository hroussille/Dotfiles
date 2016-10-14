#!/bin/bash

URL='https://google.com/#q='
QUERY=$(echo '' | dmenu -p "Search:" -b -l 1 -fn "System San Francisco Display 10")
if [ -n "$QUERY" ]; then
  xdg-open "${URL}${QUERY}" 2> /dev/null
  exec i3-msg [class="^Google$"] focus
fi
