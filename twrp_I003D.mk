#
# Copyright 2017 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Custom vendor used in build tree
CUSTOM_VENDOR := twrp

# Inherit from our custom product configuration
$(call inherit-product, vendor/$(CUSTOM_VENDOR)/config/common.mk)

# OEM Info
BOARD_VENDOR := asus

# Identifier for common folder
COMMON_SOC := sm8250

# Define hardware platform
PRODUCT_PLATFORM := kona

# Release name
PRODUCT_RELEASE_NAME := I003D

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := $(PRODUCT_RELEASE_NAME)
PRODUCT_NAME := $(CUSTOM_VENDOR)_$(PRODUCT_DEVICE)
PRODUCT_BRAND := $(BOARD_VENDOR)
PRODUCT_MODEL := $(shell echo $(PRODUCT_BRAND) | tr  '[:lower:]' '[:upper:]')_$(PRODUCT_DEVICE)
PRODUCT_MANUFACTURER := $(PRODUCT_BRAND)

# Inherit from hardware-specific part of the product configuration
$(call inherit-product, device/$(PRODUCT_BRAND)/$(PRODUCT_DEVICE)/device.mk)
