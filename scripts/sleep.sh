#!/bin/bash

sleep $(bc <<< $(uptime -s | cut -d ":" -f 2)%10*60+$(uptime -s | cut -d ":" -f 3))
