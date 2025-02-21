TARGET = iphone:clang:latest:15.0
ARCHS = arm64 arm64e
export DEBUG = 0
INSTALL_TARGET_PROCESSES = MobileSlideShow

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = photo

photo_FILES = photo.xm
photoCFLAGS = -fobjc-arc -Wno-error
photo_LOGOS_DEFAULT_GENERATOR = internal

export THEOS_STRICT_LOGOS=0
export ERROR_ON_WARNINGS=0
export LOGOS_DEFAULT_GENERATOR=internal

include $(THEOS_MAKE_PATH)/tweak.mk
