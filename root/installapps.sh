#!/bin/bash

json_file="/options.json"

if jq ".defaultapps | contains([0])" "$json_file" | grep -q true; then
    chmod +x /installable-apps/wine.sh
    /installable-apps/wine.sh
fi
if jq ".defaultapps | contains([1])" "$json_file" | grep -q true; then
    chmod +x /installable-apps/brave.sh
    /installable-apps/brave.sh
fi
if jq ".defaultapps | contains([2])" "$json_file" | grep -q true; then
    chmod +x /installable-apps/xarchiver.sh
    /installable-apps/xarchiver.sh
fi

if jq ".programming | contains([0])" "$json_file" | grep -q true; then
    chmod +x /installable-apps/openjdk-8-jre.sh
    /installable-apps/openjdk-8-jre.sh
fi
if jq ".programming | contains([1])" "$json_file" | grep -q true; then
    chmod +x /installable-apps/openjdk-17-jre.sh
    /installable-apps/openjdk-17-jre.sh
fi
if jq ".programming | contains([2])" "$json_file" | grep -q true; then
    chmod +x /installable-apps/vscodium.sh
    /installable-apps/vscodium.sh
fi
if jq ".programming | contains([3])" "$json_file" | grep -q true; then
    chmod +x /installable-apps/python.sh
    /installable-apps/python.sh
fi

if jq ".apps | contains([0])" "$json_file" | grep -q true; then
    chmod +x /installable-apps/vlc.sh
    /installable-apps/vlc.sh
fi
if jq ".apps | contains([1])" "$json_file" | grep -q true; then
    chmod +x /installable-apps/libreoffice.sh
    /installable-apps/libreoffice.sh
fi
if jq ".apps | contains([2])" "$json_file" | grep -q true; then
    chmod +x /installable-apps/synaptic.sh
    /installable-apps/synaptic.sh
fi
if jq ".apps | contains([3])" "$json_file" | grep -q true; then
    chmod +x /installable-apps/aqemu.sh
    /installable-apps/aqemu.sh
fi
if jq ".apps | contains([4])" "$json_file" | grep -q true; then
    chmod +x /installable-apps/discord.sh
    /installable-apps/discord.sh
fi

# clean stuff

rm -rf /installable-apps
