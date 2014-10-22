#!/bin/sh
date=`date +"%F"`
URL=`curl -s http://dilbert.com/strips/comic/$date | grep -m 1 -Eho "/dyn/str_strip/.+strip\.gif"`
curl -s "http://dilbert.com/$URL" > /tmp/dilbert.gif

