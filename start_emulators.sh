#!/bin/bash

# Start the firebase emulators and import data on start. 
# Export data on exit to persist the data.
firebase emulators:start --import=./firebase/emulator_data/ --export-on-exit