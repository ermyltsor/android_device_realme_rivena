#!/bin/bash
#
# Copyright (C) 2016 The CyanogenMod Project
# Copyright (C) 2017-2025 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

set -e

export DEVICE=rivena
export DEVICE_COMMON=sm8250-common
export VENDOR=realme

"./../../${VENDOR}/${DEVICE_COMMON}/setup-makefiles.sh" "$@"
