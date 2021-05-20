#
# Copyright (C) 2012 The Android Open Source Project
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

ifneq ($(filter gs201 gs101,$(TARGET_BOARD_PLATFORM)),)

common_hal_dirs := \
	libexynosutils \
	videoapi

ifeq ($(BOARD_USES_EXYNOS5_COMMON_GRALLOC), true)
ifeq ($(BOARD_USES_EXYNOS_GRALLOC_VERSION), 3)
common_hal_dirs += \
    gralloc3
endif
endif

include $(call all-named-subdir-makefiles,$(common_hal_dirs))
endif
