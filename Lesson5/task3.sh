#!/bin/bash
du /var/log -ah | sort -rh > FilesSortedBySize.txt
