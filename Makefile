ARCHS = armv7s arm64 arm64e
PACKAGE_VERSION = $(THEOS_PACKAGE_BASE_VERSION)

include $(THEOS)/makefiles/common.mk

APPLICATION_NAME = SceneApp
SceneApp_FILES = main.m SCAppDelegate.m SCRootViewController.m
SceneApp_FRAMEWORKS = UIKit CoreGraphics SceneKit

include $(THEOS_MAKE_PATH)/application.mk

after-install::
	install.exec "killall \"SceneApp\"" || true

after-stage::
	$(ECHO_NOTHING)chmod 06755 $(THEOS_STAGING_DIR)/Applications/SceneApp.app/SceneApp $(ECHO_END)