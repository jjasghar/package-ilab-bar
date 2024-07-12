#!/bin/bash

sudo rm -rf /usr/local/bin/ilab* && sudo rm -rf /Library/ilab*
rm -f dist/*

briefcase create
cp -f overrides/welcome.html build/ilab-bar/macos/app/installer/resources
cp -f overrides/postinstall.html build/ilab-bar/macos/app/installer/scripts/postinstall

briefcase build
briefcase package macOS --adhoc-sign
