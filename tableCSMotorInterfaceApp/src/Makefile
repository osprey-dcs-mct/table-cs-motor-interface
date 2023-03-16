TOP=../..

include $(TOP)/configure/CONFIG
#----------------------------------------
#  ADD MACRO DEFINITIONS AFTER THIS LINE
#=============================

#=============================
# Build the IOC application

PROD_IOC = tableCSMotorInterface
# tableCSMotorInterface.dbd will be created and installed
DBD += tableCSMotorInterface.dbd

# tableCSMotorInterface.dbd will be made up from these files:
tableCSMotorInterface_DBD += base.dbd

# Include dbd files from all support applications:
tableCSMotorInterface_DBD += calcSupport.dbd

# Add all the support libraries needed by this IOC
tableCSMotorInterface_LIBS += calc

# tableCSMotorInterface_registerRecordDeviceDriver.cpp derives from tableCSMotorInterface.dbd
tableCSMotorInterface_SRCS += tableCSMotorInterface_registerRecordDeviceDriver.cpp

# Build the main IOC entry point on workstation OSs.
tableCSMotorInterface_SRCS_DEFAULT += tableCSMotorInterfaceMain.cpp
tableCSMotorInterface_SRCS_vxWorks += -nil-

# Add support from base/src/vxWorks if needed
#tableCSMotorInterface_OBJS_vxWorks += $(EPICS_BASE_BIN)/vxComLibrary

# Finally link to the EPICS Base libraries
tableCSMotorInterface_LIBS += $(EPICS_BASE_IOC_LIBS)

#===========================

include $(TOP)/configure/RULES
#----------------------------------------
#  ADD RULES AFTER THIS LINE

