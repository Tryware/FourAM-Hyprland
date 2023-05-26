#!/bin/bash
#idk to who it belongs, i just stole it from some forum.
COUNT=$(dunstctl count waiting)
ENABLED="  on"
DISABLED="  off"
if [ $COUNT != 0 ]; then DISABLED="  $COUNT"; fi
if dunstctl is-paused | grep -q "false" ; then echo $ENABLED; else echo $DISABLED; fi
