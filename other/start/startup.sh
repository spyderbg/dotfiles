#!/bin/bash

nvidia-settings -a '[gpu:0]/GPUGraphicsMemoryOffset[3]=100'
nvidia-settings -a '[gpu:0]/GPUMemoryTransferRateOffset[3]=100'
nvidia-settings -a '[gpu:0]/GPUFanControlState=1'
nvidia-settings -a '[fan:0]/GPUTargetFanSpeed=90'
