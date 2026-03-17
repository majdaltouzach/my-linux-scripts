#!/bin/bash
# Create two virtual sinks at startup

pactl load-module module-null-sink sink_name=VirtualSinkA sink_properties=device.description="VirtualAudioSinkA"
#pactl load-module module-null-sink sink_name=VirtualSinkB sink_properties=device.description="VirtualAudioSinkB"
#
#pactl load-module module-null-sink sink_name=VirtualSinkC sink_properties=device.description="VirtualAudioSinkC"

pactl load-module module-remap-source \
    master=VirtualSinkA.monitor \
    source_name=VirtualMicA \
    source_properties="device.description=VirtualMicA"

#pactl load-module module-remap-source \
#    master=VirtualAudioSinkB.monitor \
#    source_name=VirtualMicB \
#    source_properties="device.description=VirtualMicB"
#pactl load-module module-remap-source \
#    master=VirtualAudioSinkC.monitor \
#    source_name=VirtualMicC \
#    source_properties="device.description=VirtualMicC"

