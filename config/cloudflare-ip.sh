#!/usr/bin/env bash
# Purpose: Get user real ip in nginx behind Cloudflare reverse proxy
# Author: Vivek Gite {https://www.cyberciti.biz} under GNU GPL v2.x+
# Call using Cron https://www.cyberciti.biz/faq/how-do-i-add-jobs-to-cron-under-linux-or-unix-oses/
# -------------------------------------------------------------------
set -e

# IP List
IPv4="https://www.cloudflare.com/ips-v4"
IPv6="https://www.cloudflare.com/ips-v6"

# Nginx config file
conf="./nginx/conf.d/000-real_ip.conf"

# Path to nginx binary
file="/tmp/ips.$$"

# Get list
wget -q "${IPv4}" -O -> "${file}"
wget -q "${IPv6}" -O ->> "${file}"

# Start building config file
echo 'real_ip_header CF-Connecting-IP;' > "${conf}"

while read i
do
	echo "set_real_ip_from ${i};" >> "${conf}"
done < "${file}"


# Clean up
rm -f "${file}"
