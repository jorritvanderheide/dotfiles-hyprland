#!/usr/bin/env sh

temp_screenshot="/tmp/screenshot.png"

grimblast copysave area $temp_screenshot

rm "$temp_screenshot"
