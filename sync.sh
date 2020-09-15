#!/bin/bash
git pull https://github.com/Distortions81/ModWire
go clean
go build
killall ModWire
