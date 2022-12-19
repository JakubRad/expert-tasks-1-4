#!/bin/bash
ifconfig | grep -oP '(?<=inet\s)\d+(\.\d+){3}'