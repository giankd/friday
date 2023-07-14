#! /usr/bin/env bash

date "+  %D%n  %T"
echo ""
echo "  $(awk -F"[][]" '/Left:/ { print $2 }' <(amixer sget Master)) |  $(light -G)% |  $(acpi -t | awk '{print $4}')"
echo ""
echo " "
echo "  $(acpi -b | awk -F ": " '{print $2}')   "
