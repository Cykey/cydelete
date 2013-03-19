TWEAK_NAME := CyDelete
CyDelete_LOGOS_FILES = Hook.xm
CyDelete_FRAMEWORKS = UIKit

SUBPROJECTS = setuid preferences

include theos/makefiles/common.mk
include theos/makefiles/tweak.mk
include theos/makefiles/aggregate.mk

after-stage::
	find $(FW_STAGING_DIR) -iname '*.plist' -or -iname '*.strings' -exec plutil -convert binary1 {} \;
	find $(FW_STAGING_DIR) -iname '*.png' -exec pincrush -i {} \;
