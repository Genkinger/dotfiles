#!/bin/bash
echo $(date '+%d/%m/%Y')

case $BLOCK_BUTTON in
	1) termite -e 'cal -3; sleep 5';;
esac
