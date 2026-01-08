
export DEBUG=0
ifeq ($(DEBUG), 0)
PACKAGE_VERSION=$(THEOS_PACKAGE_BASE_VERSION)
endif

TARGET := iphone:clang:14.5:10.0
ARCHS = arm64 arm64e

#TARGET := macosx:clang:15.4:10.15
#ARCHS = x86_64 arm64

include $(THEOS)/makefiles/common.mk

TOOL_NAME = optool

optool_FILES = $(wildcard *.m ./ArgumentParser/*.m)
optool_CFLAGS = -fobjc-arc -Wno-error=unused-function
optool_FRAMEWORKS = Foundation
optool_INSTALL_PATH = /usr/bin

include $(THEOS_MAKE_PATH)/tool.mk
