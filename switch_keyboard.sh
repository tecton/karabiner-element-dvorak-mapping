#!/usr/bin/env bash

cd ~/.karabiner.d/configuration
internal=karabiner-internal.json
external=karabiner-external.json
using=karabiner.json

if cmp -s $internal $using
then
    echo "switching to external keyboard"
    cp $external $using
else
    echo "switching to internal keyboard"
    cp $internal $using
fi

