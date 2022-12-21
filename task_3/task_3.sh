#!/bin/bash
# oryginal file
curl http://www.almhuette-raith.at/apache-log/access.log | awk '{print $1}' | sort -n -k 1 | uniq -c

# or

# local file
curl http://www.almhuette-raith.at/apache-log/access.log > mock.txt
cat mock.txt | awk '{print $1}' | sort -n -k 1 | uniq -c
