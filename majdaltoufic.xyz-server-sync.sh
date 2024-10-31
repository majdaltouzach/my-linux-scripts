#!/bin/sh
rsync -arzvh -e 'ssh -p 56294' $HOME/scripts/server-scripts/majdaltoufic.xyz/ signmail@majdaltoufic.xyz:/home/signmail/scripts 
exit 0
