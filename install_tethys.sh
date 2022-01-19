#!/bin/bash

echo "Starting Tethys Installation"

~/miniconda3/bin/create -n tethys -c tethysplatform -c conda-forge tethys-platform

~/miniconda3/bin/activate tethys

tethys gen portal_config

tethys db configure

echo "Finished Tethys Installation"