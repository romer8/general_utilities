#!/bin/bash

echo "Starting Tethys Installation"

~/miniconda3/bin/conda create -n tethys -c tethysplatform -c conda-forge tethys-platform

source ~/miniconda3/bin/activate tethys && tethys gen portal_config && tethys db configure

echo "Finished Tethys Installation"