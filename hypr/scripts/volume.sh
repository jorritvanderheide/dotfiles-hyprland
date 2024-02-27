#!/usr/bin/env sh

# Get volume
get_volume() {
    volume=$(pamixer --get-volume)
    echo volume
}

# Increase volume
inc_volume() {
	pamixer -i 10
}

# Decrease volume
dec_volume() {
	pamixer -d 10
}

# Toggle mute
toggle_mute() {
	pamixer -t
}

# Mute
mute() {
    pamixer -m
}

# Unmute
unmute() {
    pamixer -u
}

# Execute accordingly
if [[ "$1" == "-i" ]]; then
    unmute
	inc_volume
elif [[ "$1" == "-d" ]]; then
    dec_volume
    get_volume
    if [[ "$volume" == "0" ]]; then
        mute
    fi
elif [[ "$1" == "-t" ]]; then
	toggle_mute
fi
