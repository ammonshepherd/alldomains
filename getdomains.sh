#!/bin/bash
 
if [ -e alldomains ]
then
  rm alldomains
fi
 
alldomains=( $(find /etc/httpd/conf.vhosts/ -name *.conf) )
 
for domain in ${alldomains[*]}
do
  cat $domain | egrep "ServerName|ServerAlias" | egrep -v "#" | sed -e 's|ServerName||' -e 's|ServerAlias||' -e 's|www.||' -e 's|:80||' | tr -s ' ' '\n' | tr -d ' ' | sed -e '/^\s*$/d' >> alldomains
done
 
sort alldomains | uniq | sort -o alldomains
