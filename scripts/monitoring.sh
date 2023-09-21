#!/bin/bash

# VARIABLES DEFINITION
ARCH=$(uname -a)
CPU_P=$(grep 'physical id' /proc/cpuinfo | uniq | wc -l)
CPU_V=$(grep processor /proc/cpuinfo | uniq | wc -l)
MEM_USED=$(free -m | grep Mem | awk '{print $3}')
MEM_TOT=$(free -m | grep Mem | awk '{print $2}')
MEM_PER=$(free -m | grep Mem | awk '{printf("%.0f"), ($3 / $2) * 100}')
DSK_USED=$(df -h --total | grep total | awk '{print $3}')
DSK_TOT=$(df -h --total | grep total | awk '{print $4}')
DSK_PER=$(df -h --total | grep total | awk '{print $5}')
CPU_LOAD=$(mpstat | grep all | awk '{printf("%s", 100 - $13)}')
LST_BOOT=$(who -b | awk '{print($3 " " $4)}')
LVM_USE=$(lsblk -f | grep LVM -q && echo yes || echo no)
TCP_CNCT=$(grep TCP /proc/net/sockstat | awk '{print $3}')
USR_LOG=$(who | wc -l)
IP_ADDR=$(hostname -I | awk '{print $1}')
MAC_ADDR=$(ip link show | grep link/ether | awk '{print $2}')
SUDO_LOGS=$(cat /var/log/sudo/sudologs | grep USER | wc -l)


# MONITORING PRINT
wall "	#Architecture:	   ${ARCH}
	#CPU Physical:	   ${CPU_P}
	#vCPU:         	   ${CPU_V}
	#Memory Usage: 	   ${MEM_USED}/${MEM_TOT}MB (${MEM_PER}%)
	#Disk Usage:   	   ${DSK_USED}/${DSK_TOT} (${DSK_PER})
	#CPU Load:     	   ${CPU_LOAD}%
	#Last Boot:	   ${LST_BOOT}
	#LVM Use:	   ${LVM_USE}
	#Connections TCP:  ${TCP_CNCT} ESTABLISHED
	#User Log:	   ${USR_LOG}
	#Network:	   IP ${IP_ADDR} (${MAC_ADDR})
	#Sudo:		   ${SUDO_LOGS} COMMANDS"

