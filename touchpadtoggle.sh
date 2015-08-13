id=$(xinput --list --id-only 'DLL0652:00 06CB:2985')
devEnabled=$(xinput --list-props $id | awk '/Device Enabled/{print !$NF}')
xinput --set-prop $id 'Device Enabled' $devEnabled
notify-send 'TouchPad' "Device Enabled = $devEnabled"
