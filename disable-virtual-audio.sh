#!/bin/bash
# Unload all virtual audio modules EXCEPT rnnoise/filter-chain noise suppression

# List all loaded modules
modules=$(pactl list short modules)

# Loop through only virtual modules (null-sink, remap-source, loopback)
echo "$modules" | grep -E "module-null-sink|module-remap-source|module-loopback" | while read -r line; do
    id=$(echo "$line" | awk '{print $1}')
    name=$(echo "$line" | awk '{print $2}')

    # Skip if it's rnnoise or filter-chain related
    if echo "$line" | grep -qi "rnnoise\|filter-chain"; then
        echo "Skipping $name (rnnoise/filter-chain protected)"
        continue
    fi

    echo "Unloading $name (module ID $id)..."
    pactl unload-module "$id"
done

