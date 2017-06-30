# Grab all of the domain names in Apache host file

This gets all of the domains from ServerName and ServerAlias lines, takes out all of the white space and empty lines, and creates a file with just a list of the unique domain names.

This accounts for subdomains that use 'www' or have port :80 on the end.

For instance, www.somedomain.com and somedomain.com are the same, so the script takes out the 'www'. which leaves to copies of somedomain.com, which it then deletes one of them in the final output to the file. The same for ':80'.

# Usage
- Change permissions on file:
  - `chmod u+x getdomains.sh`
- `./getdomains.sh`



