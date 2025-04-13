#!/usr/bin/env bash
#set -e #exit on first error
openlane --manual-pdk --overwrite --run-tag latest --pdk sky130A ./config.json &&
cp -r ./runs/latest/final/* ./syntesized_design/ 
echo 1
last_line=$(grep -n '.subckt' ./syntesized_design/spice/dig.spice | tail -n1 | cut -d: -f1) 
echo $last_line
delete_upto=$((last_line - 1)) 
echo $delete_opto 
sed -i "1,${delete_upto}d" ./syntesized_design/spice/dig.spice

        echo "finished"
cp ./syntesized_design/spice/dig.spice ./syntesized_design/spice/dig2.spice

ls -1 -d /opt/pdk/share/pdk/sky130A/libs.ref/sky130_fd_sc_hd/spice/* | sed 's|^|.include |' | cat - ./syntesized_design/spice/dig2.spice > temp.tmp && mv temp.tmp ./syntesized_design/spice/dig2.spice 


ls -1 -d /opt/pdk/share/pdk/sky130A/libs.ref/sky130_fd_pr/spice/* | grep -E 'tt.corner|fd_pr__pfet_01v8_hvt__mismatch.corner.spice' | sed 's|^|.include |' | cat - ./syntesized_design/spice/dig2.spice > temp.tmp && mv temp.tmp ./syntesized_design/spice/dig2.spice 

cp ./syntesized_design/mag/dig.mag ../design/JNW_GR02_SKY130A/dig.mag 
cp ./syntesized_design/spice/dig2.spice ../design/JNW_GR02_SKY130A/dig.spice 
