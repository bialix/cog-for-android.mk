LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := helloworld_shared

LOCAL_MODULE_FILENAME := libhelloworld


LOCAL_SRC_FILES  = helloworld/main.cpp

# [[[cog
# import list_classes
# cpps, includes = list_classes.listCppPaths()
#
# #### Write list of C++ files found
#
# cog.outl()
# for f in cpps:
#   cog.outl('LOCAL_SRC_FILES += %s' % f)
#
# #### Write list of subdirectories with source files found
#
# cog.outl()
# cog.outl('LOCAL_C_INCLUDES  = $(LOCAL_PATH)/../../Classes')
#
# #### Delete next 2 lines of code if you don't need list of subdirectories
#
# for d in includes:
#  cog.outl('LOCAL_C_INCLUDES += $(LOCAL_PATH)/%s' % d)
#
# cog.outl()
# ]]]

LOCAL_SRC_FILES += ../../Classes/AppDelegate.cpp
LOCAL_SRC_FILES += ../../Classes/HelloWorldScene.cpp

LOCAL_C_INCLUDES  = $(LOCAL_PATH)/../../Classes

# [[[end]]]


LOCAL_WHOLE_STATIC_LIBRARIES := cocos2dx_static

include $(BUILD_SHARED_LIBRARY)

$(call import-module,cocos2dx)

