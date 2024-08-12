#!/usr/bin/env bash

source "$HOME"/.config/rofi/applets/shared/theme.bash
theme="$type/$style"

# Theme Elements
prompt='Keyboards'
mesg="Current Keyboard : `xkb-switch` "

if [[ ( "$theme" == *'type-1'* ) || ( "$theme" == *'type-3'* ) || ( "$theme" == *'type-5'* ) ]]; then
	list_col='1'
	list_row='3'
elif [[ ( "$theme" == *'type-2'* ) || ( "$theme" == *'type-4'* ) ]]; then
	list_col='3'
	list_row='1'
fi

# CMDs (add your apps here)
dvorak_cmd='setxkbmap -layout us -variant dvorak'
qwerty_cmd='setxkbmap -layout us'
hindi_cmd='setxkbmap -layout in'

# Options
layout=`cat ${theme} | grep 'USE_ICON' | cut -d'=' -f2`
if [[ "$layout" == 'NO' ]]; then
	option_2=" Dvorak <span weight='light' size='small'><i>($dvorak_cmd)</i></span>"
	option_3="󰥻 Qwerty <span weight='light' size='small'><i>($qwerty_cmd)</i></span>"
	option_1="क Hindi <span weight='light' size='small'><i>($hindi_cmd)</i></span>"
else
	option_2="Dv"
	option_3="Qw"
	option_1="Hi"
fi

# Rofi CMD
rofi_cmd() {
	rofi -theme-str "listview {columns: $list_col; lines: $list_row;}" \
		-theme-str 'textbox-prompt-colon {str: " ";}' \
		-dmenu \
		-p "$prompt" \
		-mesg "$mesg" \
		-markup-rows \
		-theme ${theme}
}

# Pass variables to rofi dmenu
run_rofi() {
	echo -e "$option_1\n$option_2\n$option_3" | rofi_cmd
}

# Execute Command
run_cmd() {
	if [[ "$1" == '--opt1' ]]; then
		${hindi_cmd}
	elif [[ "$1" == '--opt2' ]]; then
		${dvorak_cmd}
	elif [[ "$1" == '--opt3' ]]; then
		${qwerty_cmd}
	fi
}

# Actions
chosen="$(run_rofi)"
case ${chosen} in
    $option_1)
		run_cmd --opt1
        ;;
    $option_2)
		run_cmd --opt2
        ;;
    $option_3)
		run_cmd --opt3
        ;;
esac
