TARGET = iphone:clang:latest:15.0
ARCHS = arm64 arm64e
export DEBUG = 0
INSTALL_TARGET_PROCESSES = leisu

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = leisu

leisu_FILES = leisu.xm
leisuCFLAGS = -fobjc-arc -Wno-error
leisu_LOGOS_DEFAULT_GENERATOR = internal

export THEOS_STRICT_LOGOS=0
export ERROR_ON_WARNINGS=0
export LOGOS_DEFAULT_GENERATOR=internal

include $(THEOS_MAKE_PATH)/tweak.mk
